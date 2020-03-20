import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class TrueUsd extends Erc20 {
  TrueUsd(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'TUSD', address);
}
