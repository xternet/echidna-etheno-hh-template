const hre = require("hardhat");

async function main() {
  const Target = await hre.ethers.getContractFactory("Target");
  const target = await Target.deploy();
  await target.deployed();

  console.log(`Target deployed at: ${target.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
