// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import { Script } from "forge-std/Script.sol";
import { console } from "forge-std/console.sol";
import { stdJson } from "forge-std/StdJson.sol";

import { Core } from "../src/Core.sol";
import { AccountImpl } from "../src/AccountImpl.sol";

contract DeployScript is Script {
    using stdJson for string;

    function run() external {
        // ───── Load ENV ─────
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployer = vm.addr(deployerPrivateKey);

        // ───── Start Broadcasting ─────
        vm.startBroadcast(deployerPrivateKey);

        AccountImpl accountImpl = new AccountImpl();
        Core core = new Core(address(accountImpl));
        
        vm.stopBroadcast();

        // ───── Logging ─────
        console.log("Deployer:", deployer);
        console.log("AccountImpl:", address(accountImpl));
        console.log("Core:", address(core));
    
    }
}