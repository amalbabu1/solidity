// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract FixedSize{
    uint[8] public numbers = [1,2];
    
    function insert(uint num, uint index) public {
        //default function
        
        numbers[index] = num;
    }
    
    function returnLength()view public returns(uint ){
        return numbers.length;
    }
}

contract DynamicSize{
    uint[] public numbers = [1,2,3,5];
    
    function insert(uint x) public{
        numbers.push(x);
    }
    
    function remove() public{
        numbers.pop();
    }
    
    function returnLength() public view returns(uint){
        return numbers.length;
    }
}