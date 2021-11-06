// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

contract Traffic{
    enum TrafficSignals{Red, Orange, Green}
    TrafficSignals signal;
    
    function setRead() public{
        signal = TrafficSignals.Red;
    }
    
    function setOrange() public{
        signal = TrafficSignals.Orange;
    }
    
    function setGreen() public{
        signal = TrafficSignals.Green;
    }
    
    function retrieveSignal() public view returns(TrafficSignals){
        return signal;
    }
    
    
}