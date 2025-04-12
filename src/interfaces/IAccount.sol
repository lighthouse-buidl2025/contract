// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

interface IAccount {
    function initialize(address coreAddress) external;
    function owner() external view returns (address);
    function core() external view returns (address);
    function setOwner(address newOwner) external;
    function claimTokens(address token, uint256 amount) external;
    function callDapp(address target, bytes calldata data) external returns (bytes memory);
}
