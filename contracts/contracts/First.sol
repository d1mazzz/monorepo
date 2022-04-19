//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

//1. I want to get token after funding ETH
//2. Can buy "NFT" with tokens
//3. Can sell tokens
//4. Get fee when sells tokens
//5. Mint tokens
contract First is Ownable, ERC20 {
    uint256 private _tokenPrice = 10**18 / 100; //0,01ether

    constructor() ERC20("MyToken", "MTK") {}

    // function getTokens(address receiver) public payable {
    //     _mint();
    // }

    function setTokenPrice(uint256 _price) external onlyOwner {
        _tokenPrice = _price;
    }

    function tokenPrice() external view returns (uint256) {
        return _tokenPrice;
    }
}
