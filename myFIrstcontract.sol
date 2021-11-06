//SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

contract Storage{
    
    //state variable
    uint256 number;
    
    function store(uint256 num) public{
        //can be accessed from outside
        number=num;
    }
    
    function retrieve() public view returns(uint256){
        return number;
    }
}