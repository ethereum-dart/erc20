import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Zrx extends Erc20 {
  Zrx(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'ZRX', address);
}
