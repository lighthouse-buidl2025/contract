// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { IERC20 } from "./dependencies/openzeppelin/contracts/IERC20.sol";
import { Initializable } from "./dependencies/openzeppelin/upgradeability/Initializable.sol";
import { Delegatecall } from "./lib/DelegateCall.sol";
import { IAccount } from "./interfaces/IAccount.sol";

contract AccountImpl is IAccount, Initializable {
    using Delegatecall for address;

    address private _owner;
    address private _core;

    event ClaimedTokens(address token, address owner, uint256 amount);
    event OnwerSet(address onwer);

    modifier onlyOwner() {
        require(_owner == msg.sender, "CALLER_NOT_OWNER");
        _;
    }

    modifier onlyCore() {
        require(_core == msg.sender, "CALLER_NOT_Core");
        _;
    }

    function initialize(address coreAddress) public initializer {
        require(coreAddress != address(0), "coreAddress cannot be zero");
        _core = coreAddress;
    }

    function owner() public view returns (address) {
        return _owner;
    }

    function core() public view returns (address) {
        return _core;
    }

    function setOwner(address newOwner) external onlyCore {
        require(newOwner != address(0), "new owner address cannot be zero");
        _owner = newOwner;
        emit OnwerSet(newOwner);
    }

    function claimTokens(address token, uint256 amount) external onlyOwner {
        require(token != address(0), "token address cannot be zero");
        require(_owner != address(0), "owner address cannot be zero");
        
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (amount == 0 || amount > balance) {
            amount = balance;
        }
        
        IERC20(token).transfer(_owner, amount);
        emit ClaimedTokens(token, _owner, amount);
    }

    function callDapp(address target, bytes memory data) external onlyCore returns (bytes memory) {
        (bool success, bytes memory returnData) = target.call(data);
        require(success, "Call to dApp failed");
        return returnData;
    }

    receive() external payable {}
}