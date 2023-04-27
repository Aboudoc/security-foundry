// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/CaughtWithTest.sol";

contract CaughtWithTestTest is Test {
    CaughtWithTest public caughtWithTest;

    function setUp() public {
        caughtWithTest = new CaughtWithTest();
    }

    function testSetNumber() public {
        uint256 myNumber = 99;
        caughtWithTest.setNumber(myNumber);
        assertEq(caughtWithTest.number(), myNumber);
    }
}
