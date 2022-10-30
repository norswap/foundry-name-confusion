// SPDX-License-Identifier: BSD-3-Clause-Clear

pragma solidity ^0.8.0;

import "@openzeppelin/token/ERC20/extensions/ERC20Burnable.sol";

contract ERC20_1 is ERC20Burnable {
    constructor() ERC20("ERC20_1", "ERC20_1") {}
}
