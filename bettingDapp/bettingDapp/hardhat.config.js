require('@nomiclabs/hardhat-waffle')

module.exports = {
  solidity: '0.8.8',
  networks: {
    rinkeby: {
      url: 'https://eth-rinkeby.alchemyapi.io/v2/LWwLh40KNy7cwjcG6KdjWV0zeGWJcnfd',
      accounts: [
        '7d581715296042cba16316f8885c44cff198370156baf7bb4e46f17db95b35b4',
      ],
    },
  },
}
