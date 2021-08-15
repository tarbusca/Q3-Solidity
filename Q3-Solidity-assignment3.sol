/**
 Create a token based on ERC20 which is buyable. Following features should present;

1. Anyone can get the token by paying against ether
2. Add fallback payable method to Issue token based on Ether received. Say 1 Ether = 100 tokens.
3. There should be an additional method to adjust the price that allows the owner to adjust the price.
 */
pragma solidity ^0.8.0;
//"SPDX-License-Identifier: UNLICENSED"

/**
 * Tariq Saeed 
 * PIAIC 111569
 */
 
//if you run these in Remix, the imports will work.
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "./2_Owner.sol";   

contract TariqToken is Owner, ERC20 {
    uint16 private curRate;
    uint256 private curSupply;
    
    constructor (string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, 1000000*(10**18));
        curRate = 100;  //setting current conversion of ether to token
    }
    //2. Add fallback payable method to Issue token based on Ether received. Say 1 Ether = 100 tokens.
    fallback() external payable {
        if (msg.value > 0 ) {
            _mint(msg.sender, msg.value * curRate * (10**18));
        } 
    }
    //1. Anyone can get the token by paying against ether
    function buyToken () payable external {
        _mint(msg.sender, msg.value*curRate*(10**18));
    }
    //3. There should be an additional method to adjust the price that allows the owner to adjust the price.
    function priceAdjust (uint16 _rate) private isOwner() {
        curRate = _rate;
        
    } 
}
