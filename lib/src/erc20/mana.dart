import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Mana extends Erc20 {
  Mana(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'MANA', address);
}
