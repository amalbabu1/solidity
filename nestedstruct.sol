// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract testStruct{

    struct kyc{
        uint256 iD;
        string firstName;
        string LastName;
        addressDetails location;
    }
    struct addressDetails{
        string buildingName;
        string street;
        string state;
        uint pinCode;
    }
    kyc customer;
    
    function newCustomer(
        uint _iD,
        string memory _fn,
        string memory _ln,
        string memory _build,
        string memory _stret,
        string memory _state,
        uint _pinCode
    ) public {
        customer = kyc(_iD,_fn,_ln,addressDetails(_build,_stret,_state,_pinCode));
    }
    function getCustomerDetails () public view returns (kyc memory){
        return customer;
    }
    
}
