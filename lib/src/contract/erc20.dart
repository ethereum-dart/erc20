import 'dart:async';

import 'package:erc20/erc20.dart';
import 'package:erc20/src/abis/erc20.dart';
import 'package:erc20/src/utils.dart';
import 'package:web3dart/web3dart.dart';

abstract class Erc20 {
  final Web3Client client;
  final int _chainId;
  final String name;
  final EtherUnit unit;

  DeployedContract _contract;

  Erc20(
    this.client,
    this._chainId,
    this.name,
    EthereumAddress address, {
    this.unit = EtherUnit.wei,
  }) {
    _contract = DeployedContract(
      ContractAbi.fromJson(erc20Abi, 'erc20'),
      address,
    );
  }

  EthereumAddress get address => _contract.address;

  int get chainId => _chainId;

  Future<EtherAmount> balanceOf(EthereumAddress address) async {
    final result = await client.call(
      contract: _contract,
      function: _contract.function('balanceOf'),
      params: [address],
    );
    return EtherAmount.inWei(result.first);
  }

  Future<TransactionReceipt> approve(
    Credentials credentials,
    EthereumAddress spender,
    EtherAmount amount, {
    int maxGas = 100000,
  }) =>
      sendAndWaitContractTransaction(
        client,
        _contract,
        chainId,
        credentials,
        'approve',
        maxGas,
        [
          spender,
          amount.getInWei,
        ],
      );

  Future<bool> allowance(EthereumAddress owner, EthereumAddress spender) async {
    final result = await client.call(
      contract: _contract,
      function: _contract.function('allowance'),
      params: [
        owner,
        spender,
      ],
    );
    return (result.first as BigInt).toInt() != 0;
  }

  Future<TransactionReceipt> transfer(
    Credentials credentials,
    EthereumAddress address,
    EtherAmount amount, {
    int maxGas = 100000,
  }) =>
      sendAndWaitContractTransaction(
        client,
        _contract,
        chainId,
        credentials,
        'transfer',
        maxGas,
        [
          address,
          amount.getInWei,
        ],
      );
}
