const { ethers } = require("hardhat");

async function main() {


    const whitelistContract = await ethers.getContractFactory("Whitelist");
    //where we deploy 
    const deployedWhitelistContract = await whitelistContract.deploy(10);
    //wait for it to finish deploying
    await deployedWhitelistContract.deployed();

    //print the addy of deployed contract
    console.log(
        "whitelist contract addy:",
        deployedWhitelistContract.address
    );
}

//call main function and catch if there is any error
main()
.then(() => process.exit(0))
.catch((error) => {
    console.error(error);
    process.exit(1);
});