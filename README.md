# Echidna Etheno HardHat Fuzz Template

## Commands:
- [ ] 1. Run Etheno & start saving Blockchain state into init.json
```
etheno --ganache --ganache-args "--deterministic --gasLimit 10000000" -x contracts/echidna/init.json
```
- [ ] 2. Update Blockchain state & add it into init.json.
```
npx hardhat run scripts/deploy.js --network localhost
```
- [ ] 3. Close Etheno (CTRL+C) and finish init.json.
<br></br>
- [ ] 4. Clean the environment, compile contracts, load init.json (in config.yaml) & start fuzzing EchidnaTest.sol.
```
rm -rf crytic-compile artifacts cache && echidna-test . --contract EchidnaTest --config contracts/echidna/config.yaml
```
