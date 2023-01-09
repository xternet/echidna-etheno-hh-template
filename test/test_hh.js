const { expect } = require("chai");

describe("Lock", function () {
  beforeEach = async () => {
    const [deployer, ] = await ethers.getSigners();
    const Contract = await ethers.getContractFactory("Contract");
    const contract = await Contract.deploy();
  }

  describe("Describe", function () {
    it("it", async function () {
      expect(0).to.equal(0);
    });
  });
});
