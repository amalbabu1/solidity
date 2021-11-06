// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract myContract{
    function largest(uint256 a, uint256 b) public pure returns(uint256 max){
        if(a>b)
            max=a;
        else
            max=b;
    }
    
    function terinaryfn(uint256 a , uint256 b) public pure returns(uint256 max){
    
        max= (a>b)?a:b;
    }
    
}