pragma solidity 0.8.17;

import "../../contracts/Target.sol";

contract User {
  function proxy(address _to, bytes memory _calldata) public returns (bool success, bytes memory returnData) {
		(success, returnData) = address(_to).call(_calldata);
  }
}

contract EchidnaSetup {
  User user;
  Target target;

  constructor() {
    user = new User();
    target = new Target();
  }

  function _between(uint256 val, uint256 min, uint256 max) internal pure returns (uint256) {
    return min + (val % (max - min + 1));
  }
}