require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-etherscan");

const { PRIVATE_KEY, POLYGONSCAN_API_KEY, ETHERSCAN_API_KEY, SNOWTRACE_API_KEY ,ALCHEMY_API_KEY} = require('./secret.json');

module.exports = {
  solidity:"0.5.0",
  networks: {
    ropsten: {
      url: `https://ropsten.infura.io/v3/`,
      accounts: [`0x${PRIVATE_KEY}`],
    },
    rinkeby: {
      url: `https://rinkeby.infura.io/v3/9aa3d95b3bc440fa88ea12eaa4456161`,
      accounts: [`0x${PRIVATE_KEY}`],
    },
    kovan: {
      url: `https://eth-kovan.alchemyapi.io/v2/${ALCHEMY_API_KEY}`,
      accounts: [`0x${PRIVATE_KEY}`],
    },
    polygonMumbai: {
      url: `https://rpc-mumbai.maticvigil.com`,
      accounts: [`0x${PRIVATE_KEY}`],
    },
    avalancheFujiTestnet: {
      url: `https://api.avax-test.network/ext/bc/C/rpc`,
      accounts: [`0x${PRIVATE_KEY}`],
    },
  },
  etherscan: {
    apiKey: {
      ropsten: `${ETHERSCAN_API_KEY}`,
      rinkeby: `${ETHERSCAN_API_KEY}`,
      kovan: `${ETHERSCAN_API_KEY}`,

      polygonMumbai: `${POLYGONSCAN_API_KEY}`,

      avalancheFujiTestnet: `${SNOWTRACE_API_KEY}`,
    }
  }
};
