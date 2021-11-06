// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract functionMutability{
    
    uint256 number; // state
    
    function get() view public returns(uint256){
        //View: The function can only view and can't modify the state
        return number;
    }
    
    function set(uint256 num) public{
    //default can chamge state
        number = num;
    }
    
    function calculate(uint256 a, uint256 b) pure public returns(uint256){
        //Pure: Almost the same as view, but pure function can't read or modify the state.
        return a+b;
    }         
    
    function sendEther() public payable returns(uint256){
        //Payable: Function is able to receive ether on behalf of the contract.
        return address(this).balance;
        //The this keyword is used to refer to the contract
    }
    
}



//default function is able to change the state of the blockchain and the function is able to read from the state of the blockchain
//Pure and view functions do not make any changes to the blockchain, thus do not has any cost for execution. Simply saying, we don't need ether or an Ethereum account for executing these functions.