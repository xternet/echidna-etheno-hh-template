pragma solidity 0.8.17;

contract Target {
	uint256 public index;

  function increaseBy(uint256 _amt) public {
    index+=_amt;
  }
}