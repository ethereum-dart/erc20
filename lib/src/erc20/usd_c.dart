import 'package:erc20/src/contract/erc20.dart';
import 'package:web3dart/web3dart.dart';

class UsdC extends Erc20 {
  UsdC(Web3Client client, int chainId, EthereumAddress address)
      : super(client, chainId, 'USDC', address, unit: EtherUnit.szabo);
}
