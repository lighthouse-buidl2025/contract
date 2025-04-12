//// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MockContract {
    mapping(uint64=>address) callerLog;
    uint64 num;

    function testCall() public {
        callerLog[num]=msg.sender;
        num++;
    }
}