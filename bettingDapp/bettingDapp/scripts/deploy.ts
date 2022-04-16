const { ethers } = require("hardhat");

const main = async () => {
    const BettingContract = await ethers.getContractFactory('Betting')
    const BettingContractDeployed = await BettingContract.deploy()
  
    await BettingContractDeployed.deployed()
  
    console.log('Contract deployed to:', BettingContractDeployed.address)
  }
  
  ;(async () => {
    try {
      await main()
      process.exit(0)
    } catch (error) {
      console.error(error)
      process.exit(1)
    }
  })()
  