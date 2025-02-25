// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract modifierExamples{
    address public owner;
    uint256 public value = 10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }
    
    modifier onlyOwner() { 
        // use when want to protect a function
        require(msg.sender == owner, "Only owner can call this method");
        _;
    }

    modifier validAddress(address _addr){
        require(_addr != address(0), "Not a valid address");
        _;
    }

    modifier noReentrancy(){
        require(!locked, "No reentrancy");
        locked = true;
        _;
        locked = false;
    }

    function deposit() payable noReentrancy public{
        require(value > 0, "Value must be more than zero");
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        // can't do anything with the value
        owner = _newOwner;
    }

    function decrement(uint256 i) public noReentrancy{
        value -= i;
        if (i>1){
            decrement(i-1);
        }
        //require (i > 0, "Increase the value to 1");
        //require((value -= 1) >= 1, "Value must be more than zero");
    }

}

