pragma solidity 0.8.17;
import "./EchidnaSetup.sol";

//run with: echidna-test test/EchidnaTest.sol --config config.yaml
contract EchidnaTest is EchidnaSetup {
  event LogTestInfo(string, uint256, uint256, uint256, uint256);

  function testTarget(uint256 _amt) public {
    /* Pre-Conditions */
    uint256 index_before = target.index();

    /* Optimization */
    if(_amt==0) _amt+=1;

    uint256 amt = _between(_amt, 1, type(uint).max-index_before);

    /* Action */
    (bool success, ) = user.proxy(address(target), abi.encodeWithSelector(target.increaseBy.selector, amt));
    require(success);

    /* Post-Conditions */
    uint256 index_after = target.index();

    /* Invariant */
    emit LogTestInfo("index_before, index_after, _amt, amt", index_before, index_after, _amt, amt); //to debug in case of failure
    assert(index_after==index_before+amt);
  }
}