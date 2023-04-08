// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/*
    REQUIREMENTS:
        1. A new token is created on Ethereum
        2. Tokens are minted to your wallet

*/

// imports from https://www.openzeppelin.com/contracts
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Icarion is ERC20, Ownable {
    constructor() ERC20("Icarion", "ICA") {
        _mint(msg.sender, 0 * 10 ** decimals()); // initial total suppy is zero
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
