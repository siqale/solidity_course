
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract VariablesExample{
    // first example using uint
    uint8 public maxPermit = 255; // 
    uint8 public testLimit;
    int8 public negative = -1;  
    uint256 public num; 
    uint256 public negativeNum;

    // second example using other types
    bool public permission;
    address public registeredAccount;
    string public name;
    bytes public myBytes;

    // First example functions

    function insertMaxUnit(uint8 _num) external {
        testLimit = _num;
    }

    function insertNum(uint256 _num) external {
        num = _num;
    }

    function negativeTest(int8 _num) external view returns (int8){
        int8 negativeNumI = _num;

        int8 negativeSumI = negative - negativeNumI;

        return (negativeSumI);
    }

    // Second example functions

    function changePermision(bool _True_or_False) external{
        permission = _True_or_False;
    }

    function registerAddress(address _address) external {
        registeredAccount = _address;
    }

    function myAddressRegister(string memory _myName) external {
        registeredAccount = msg.sender; // msg.sender is the address that interacts with this contract
        name = _myName;
    }

    function storageData(bytes memory _data) external {
        myBytes = _data;
    }

    function BytesToString(string memory _myString) external pure returns (bytes32){
        bytes32 myString = bytes32(bytes(_myString));
        return  myString;
    }

    function getMyMytesLenght () public view returns (uint256) {
        return myBytes.length;
    }
}