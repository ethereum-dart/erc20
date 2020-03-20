import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Lend extends Erc20 {
  Lend(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'LEND', address);
}
