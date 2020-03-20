import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class Tether extends Erc20 {
  Tether(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'USDT', address, unit: EtherUnit.szabo);
}
