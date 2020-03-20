import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Link extends Erc20 {
  Link(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'LINK', address);
}
