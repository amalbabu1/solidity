// SPDX-License-Identifier: MIT

pragma solidity 0.8.1;

contract Addrs{
    
    function msgSender() public view returns(address){
        return msg.sender;
        
    }
    
    function getTime() public view returns(uint){
        return block.timestamp;
    }
    
    
}