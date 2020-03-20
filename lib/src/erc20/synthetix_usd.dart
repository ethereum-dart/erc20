import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class SynthetixUsd extends Erc20 {
  SynthetixUsd(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'sUSD', address);
}
