//declare what version of solidity you want
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//create & return a greeting in contract
contract Greeting {
    //declare state variables
    string public name;
    string public greetingPrefix = "Hello";

    //declare our constructor function
    //add name argument, declare type for inside ()
    constructor(string memory initialName) {
        name = initialName;
    }
    //declare function with function key word, name, and argument
    function setName(string memory newName) public {
        name = newName;
    }
    //view means, this function is not going to change any data on the blockchain
    //pure, similar to view, but doesnt change or read any data on the blockchain
    function getGreeting() public view returns (string memory) {
        return string(abi.encodePacked(greetingPrefix, name));
    }
}
- - - - - - - - - - - - 
// solidity function definition:
// function <function_name>(param type, param name, state mutability, returns, return type),
//example:
// function getGreeting()-function name public-visibility view-state mutability returns (string memory - return type) 
//visbility specificiers, most secure to least secure
// private: only visible in current contract
// internal: can be called by current contract or any derived contracts
// external: only visble externally, howver can be accessed within the current contract via 'this.func'

// public - visible externally and internally - including getter functions for storage/state variables
