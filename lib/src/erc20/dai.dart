import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Dai extends Erc20 {
  Dai(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'DAI', address);
}
