
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract VariablesExample{
    // first example using uint
    uint8 public maxPermit = 255; // 
    uint8 public testLimit;
    int8 public negative = -1;  
    uint256 public num; 
    uint256 public negativeNum;

    // second example


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
}