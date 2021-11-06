// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract myContract {
    function factorial (uint256 num) public pure returns (uint256 fact){
        uint256 f = 1;
        for(uint256 i=1; i<=num; i++){
            f=f*i;
        }
        fact = f;
    }
    
    function sumofdigit(uint256 num ) public pure returns(uint256 s){
        uint256 remainder;
        uint256 sum;
        while(num>0){
            remainder = num %10;
            sum+= remainder;
            num= num/ 10;
        }
        s= sum;
    }
    
    function sumofdigit2(uint256 num) public pure returns(uint256 s){
        uint256 remainder;
        uint256 sum;
        do{
            remainder = num %10;
            sum+= remainder;
            num = num/10;
        }while(num>0);
        s= sum;
    }
}