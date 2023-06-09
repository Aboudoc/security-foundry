// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/StdInvariant.sol";
import "../src/CaughtWithStatefulFuzz.sol";

contract CaughWithStatefulFuzzTest is StdInvariant, Test {
    CaughtWithStatefulFuzz public caughtWithStatefulFuzz;

    function setUp() public {
        caughtWithStatefulFuzz = new CaughtWithStatefulFuzz();
        targetContract(address(caughtWithStatefulFuzz));
    }

    function testFuzzPasses(uint128 randomNumber) public {
        caughtWithStatefulFuzz.doMoreMathAgain(randomNumber);
        assert(caughtWithStatefulFuzz.storedValue() != 0);
    }

    function invariant_testMathDoesReturnZero() public {
        assert(caughtWithStatefulFuzz.storedValue() != 0);
    }
}
