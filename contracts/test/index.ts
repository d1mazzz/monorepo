// import { expect } from "chai";
import { ethers } from "hardhat";

describe("Greeter", function () {
  it("Should return the new greeting once it's changed", async function () {
    const First = await ethers.getContractFactory("First");
    const first = await First.deploy();
    await first.deployed();

    const tokenPrice = await first.tokenPrice();

    const inEth = ethers.utils.formatEther(tokenPrice);

    console.log({ wei: tokenPrice, eth: inEth });

    // expect(await greeter.greet()).to.equal("Hello, world!");

    // const setGreetingTx = await greeter.setGreeting("Hola, mundo!");

    // // wait until the transaction is mined
    // await setGreetingTx.wait();

    // expect(await greeter.greet()).to.equal("Hola, mundo!");
  });
});
