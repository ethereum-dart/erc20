import 'package:erc20/erc20.dart';
import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Eth extends Erc20 {
  Eth(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'ETH', address);

  @override
  Future<EtherAmount> balanceOf(EthereumAddress address) =>
      client.getBalance(address);

  @override
  Future<TransactionReceipt> approve(
      Credentials credentials, EthereumAddress spender, EtherAmount amount,
      {int maxGas = 100000}) {
    throw UnsupportedError('Not supported on Eth');
  }

  @override
  Future<bool> allowance(EthereumAddress owner, EthereumAddress spender) {
    throw UnsupportedError('Not supported on Eth');
  }

  @override
  Future<TransactionReceipt> transfer(
    Credentials credentials,
    EthereumAddress address,
    EtherAmount amount, {
    int maxGas = 100000,
  }) async {
    final transaction = Transaction(to: address, value: amount);
    return sendAndWaitTransaction(client, chainId, credentials, transaction);
  }
}
