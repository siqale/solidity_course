// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract howtoConstruct{
    string public name;
    uint immutable age;

    address constant owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    constructor(string memory _name, uint256 _age) { 
        name=_name;
        age=_age;
    }

    function setName(string memory _name) external {
        require(msg.sender==owner,"only owner can update the name");
        name=_name;
    }
    
    function getAge() public view returns(uint256){
       return age;
    }
}