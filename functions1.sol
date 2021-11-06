// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Storage{
    
    uint256 number;
    
    function store(uint256 num )public{
    
        number= num;
    }
    
    function callStore() public {
        store(2000);
    }
    
    // calling store function from another function
    // by specifying input parameter name
    
    function callStoreAnother() public{
        store({num:1001});
    }
    
    function retrieve() public view returns (uint256){
        return number;
    }
    
    // function to retrieve the data in number variable
    // using output parameter label instead of return keyword
    
    function retrieveAnotther() public view returns(uint256 _num){
        _num=number;
    }
    
//view: The mutability specifies the function's nature of interaction with the blockchain state.
}