// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

//use a modifier to check a condition prior to executing the function body
//or after the execution of the function body


contract Test{
    
    modifier yesItIS(int256 _value){
        if(_value <5) revert ("Input not greater than five");
        _;
    }
    
    function isGreaterthanFive(int value) pure public yesItIS(value) returns(bool){
        return true;
    }
}