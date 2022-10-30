// SPDX-License-Identifier: BSD-3-Clause-Clear
pragma solidity ^0.8.0;

import "./ERC20_1.sol";
import "./ERC20_2.sol";
import "./ERC20_3.sol";

import "forge-std/Test.sol";

contract ERCTest is Test {
    ERC20_1 private erc20_1;
    ERC20_2 private erc20_2;
    ERC20_3 private erc20_3;

    address private constant addr = 0x00000000000000000000000000000000DeaDBeef;

    function setUp() public {
        erc20_1 = new ERC20_1();
        erc20_2 = new ERC20_2();
        erc20_3 = new ERC20_3();

        // uncommenting these lines fixes the issue
        // vm.label(address(erc20_1), "ERC20_1");
        // vm.label(address(erc20_2), "ERC20_2");
        // vm.label(address(erc20_3), "ERC20_3");
    }

    function testNaming() public {
        deal(address(erc20_1), addr, 1000, true);
        deal(address(erc20_2), addr, 1000, true);
        deal(address(erc20_3), addr, 1000, true);
    }
}
