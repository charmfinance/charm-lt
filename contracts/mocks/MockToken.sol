// SPDX-License-Identifier: Unlicense

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockToken is ERC20 {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals
    ) public
        ERC20(name, symbol)
    {
        _setupDecimals(decimals);
    }

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }
}
