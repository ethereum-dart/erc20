import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Wbtc extends Erc20 {
  Wbtc(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'WBTC', address);
}
