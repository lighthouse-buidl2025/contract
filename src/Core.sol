// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { Initializable } from "solady/utils/Initializable.sol";
import { LibClone } from "solady/utils/LibClone.sol";

import { IAccount } from "./interfaces/IAccount.sol";
import { Ownable } from "./dependencies/openzeppelin/contracts/Ownable.sol";
import { Clones } from "./dependencies/openzeppelin/upgradeability/Clones.sol"; 


contract Core is Ownable, Initializable {
    mapping(address => address) public accounts;
    address public ACCOUNT_IMPL;

    constructor(address _accountImpl) {
        require(_accountImpl != address(0), "Account implementation address cannot be zero");
        ACCOUNT_IMPL = _accountImpl;
    }

    function createAccount(address _address) external onlyOwner {
        address account = LibClone.cloneDeterministic(ACCOUNT_IMPL, keccak256(abi.encodePacked(_address)));
        IAccount(account).initialize(address(this));
        accounts[_address] = account;

    }

    function excute(
        address _account,
        address _target,
        bytes memory _data
    ) external onlyOwner returns (bytes memory) {
        require(_account != address(0), "Account address cannot be zero");
        require(_target != address(0), "Target address cannot be zero");

        address account = accounts[_account];
        bytes memory response = IAccount(account).delegatecall(_target, _data);
        return response;
    }
}
