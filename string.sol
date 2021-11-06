// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

contract Storage{
    
    string msgValue;
    
    function store(string memory data ) public{
        //function arguments are stored in memory by default
        //string variable is a dynamic variable and it has to be specifically tagged with memory
        msgValue = data ;
    }
    
    function retrive ()public view returns(string memory){
        return msgValue;
    }
    
    
}