require("@nomicfoundation/hardhat-toolbox")

module.exports = {
  networks: {
    hardhat: {
      allowUnlimitedContractSize: true,
    },
    dev: {
      chainId: 1337,
      url: 'http://127.0.0.1:8545',
      blockGasLimit: 12e6,
      gas: 12e6,
    }
  },
  mocha: {
    timeout: 1000000,
  },
  solidity: "0.8.17",
  paths: {
    artifacts: './artifacts',
    cache: './cache',
    sources: './contracts',
    tests: './test',
  },
};
