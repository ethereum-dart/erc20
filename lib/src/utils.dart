import 'dart:async';
import 'dart:indexed_db';

import 'package:pedantic/pedantic.dart';
import 'package:web3dart/web3dart.dart';

Future<TransactionInformation> waitTransaction(
  Web3Client client,
  String transactionId,
) async {
  final completer = Completer<TransactionInformation>();
  unawaited(
    client.getTransactionByHash(transactionId).then(
      (value) async {
        var transaction = value;
        while (value.blockNumber == null ||
            (value.blockNumber != null && value.blockNumber.isPending) &&
                transaction.blockHash == null) {
          transaction = await client.getTransactionByHash(transactionId);
        }
        completer.complete(transaction);
      },
    ),
  );
  return completer.future;
}

Future<String> sendTransaction(
  Web3Client client,
  int chainId,
  Credentials credentials,
  Transaction transaction,
) =>
    client.sendTransaction(
      credentials,
      transaction,
      chainId: chainId,
    );

Future<TransactionReceipt> sendAndWaitTransaction(
  Web3Client client,
  int chainId,
  Credentials credentials,
  Transaction transaction,
) async {
  final transactionId =
      await sendTransaction(client, chainId, credentials, transaction);
  final tx = await waitTransaction(client, transactionId);
  return await client.getTransactionReceipt(tx.hash);
}

Future<TransactionReceipt> sendAndWaitContractTransaction(
  Web3Client client,
  DeployedContract contract,
  int chainId,
  Credentials credentials,
  String functionName,
  int maxGas,
  List parameters,
) async {
  final transactionId = await sendTransaction(
    client,
    chainId,
    credentials,
    Transaction.callContract(
      contract: contract,
      function: contract.function(functionName),
      maxGas: maxGas,
      parameters: parameters,
    ),
  );
  final tx = await waitTransaction(client, transactionId);
  return await client.getTransactionReceipt(tx.hash);
}
