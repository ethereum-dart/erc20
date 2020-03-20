import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Rep extends Erc20 {
  Rep(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'REP', address);
}
