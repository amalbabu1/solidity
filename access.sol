// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

contract ExampleStateVariables{
    
    uint public publicVariable = 123;
    uint private privateVariable = 456;
    uint internal internalVariable = 789;
}




// when a public state variable is set , compiler will automatically create a getter 
//function. Getter functions have external visibility.



//public The variable declared as public will be accessible to everyone.
//private The variable declared as private will only be available to the contract itself.
//internal- default-  A variable declared as internal will be accessible by the contract itself and by the child contract 