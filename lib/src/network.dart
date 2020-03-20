enum Network {
  mainnet,
  ropsten,
}

int getChainId(Network network) {
  switch (network) {
    case Network.mainnet:
      return 1;
    case Network.ropsten:
      return 3;
    default:
      return 1;
  }
}
