pragma solidity 0.8.17;

import "../Target.sol";

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
    // 0x1dC4c1cEFEF38a777b15aA20260a54E584b16C48
    target = new Target();
  }

  function _between(uint256 _val, uint256 _min, uint256 _max) internal pure returns (uint256) {
    return _min + (_val % (_max - _min + 1));
  }
}