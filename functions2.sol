// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;


contract Calculations{
    uint256 public square;
    uint256 public total;
    uint256 public product;
    
    
    function findSquare(uint256 number1) public pure returns(uint256){
        return number1*number1;
    }
    
    function findProduct(uint256 number1, uint256 number2) public pure returns(uint256,uint256){
        return (number1+number2,number1*number2);
    }
    
    function store(uint256 number1, uint256 number2)public{
        square = findSquare(number1);
        (total,product) = findProduct(number1,number2);
    }
    
    //default  function can change the state
    
    
    
}