import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Snx extends Erc20 {
  Snx(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'SNX', address);
}
