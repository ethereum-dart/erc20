import 'package:erc20/erc20.dart';
import 'package:erc20/src/network.dart';
import 'package:web3dart/web3dart.dart';

EthereumAddress getEthAddress() =>
    EthereumAddress.fromHex('0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE');

EthereumAddress getDaiAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetDaiAddress;
    case Network.ropsten:
      return ropstenDaiAddress;
    default:
      return mainnetDaiAddress;
  }
}

EthereumAddress getUsdcAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetUsdcAddress;
    case Network.ropsten:
      return ropstenUsdcAddress;
    default:
      return mainnetUsdcAddress;
  }
}

EthereumAddress getSynthetixUsdAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetSynthetixUsdAddress;
    case Network.ropsten:
      return ropstenSynthetixUsdAddress;
    default:
      return mainnetSynthetixUsdAddress;
  }
}

EthereumAddress getTrueUsdAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetTrueUsdAddress;
    case Network.ropsten:
      return ropstenTrueUsdAddress;
    default:
      return mainnetTrueUsdAddress;
  }
}

EthereumAddress getTetherAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetTetherAddress;
    case Network.ropsten:
      return ropstenTetherAddress;
    default:
      return mainnetTetherAddress;
  }
}

EthereumAddress getBatAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetBatAddress;
    case Network.ropsten:
      return ropstenBatAddress;
    default:
      return mainnetBatAddress;
  }
}

EthereumAddress getKncAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetKncAddress;
    case Network.ropsten:
      return ropstenKncAddress;
    default:
      return mainnetKncAddress;
  }
}

EthereumAddress getLendAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetLendAddress;
    case Network.ropsten:
      return ropstenLendAddress;
    default:
      return mainnetLendAddress;
  }
}

EthereumAddress getLinkAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetLinkAddress;
    case Network.ropsten:
      return ropstenLinkAddress;
    default:
      return mainnetLinkAddress;
  }
}

EthereumAddress getManaAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetManaAddress;
    case Network.ropsten:
      return ropstenManaAddress;
    default:
      return mainnetManaAddress;
  }
}

EthereumAddress getMkrAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetMkrAddress;
    case Network.ropsten:
      return ropstenMkrAddress;
    default:
      return mainnetMkrAddress;
  }
}

EthereumAddress getRepAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetRepAddress;
    case Network.ropsten:
      return ropstenRepAddress;
    default:
      return mainnetRepAddress;
  }
}

EthereumAddress getSnxAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetSnxAddress;
    case Network.ropsten:
      return ropstenSnxAddress;
    default:
      return mainnetSnxAddress;
  }
}

EthereumAddress getWBtcAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetWBtcAddress;
    case Network.ropsten:
      return ropstenWBtcAddress;
    default:
      return mainnetWBtcAddress;
  }
}

EthereumAddress getZrxAddress(Network network) {
  switch (network) {
    case Network.mainnet:
      return mainnetZrxAddress;
    case Network.ropsten:
      return ropstenZrxAddress;
    default:
      return mainnetZrxAddress;
  }
}
