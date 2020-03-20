import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Bat extends Erc20 {
  Bat(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'BAT', address);
}
