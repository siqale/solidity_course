
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Operators{
    uint256 value;

    // basic functions
    function addCalc(uint256 a, uint256 b) public pure returns(uint256){
        uint256 sum = a + b;
        return sum;
    }

    function subtractionCal(uint256 a, uint256 b) public pure returns(uint256){
        uint256 result = a - b;
        return result;
    }

    function multiplicationCalc(uint256 a, uint256 b) public pure returns(uint256){
        uint256 mult = a * b;
        return mult;
    }

    function divisionCalc(uint256 a, uint256 b) public pure returns(uint256){
        uint256 div = a / b;
        return div;
    }

    // seccond level operations

    function powerCalc(uint256 a, uint256 b) public pure returns(uint256){
            uint256 pow = a ** b;
            return pow;
        }

    function modulusCalc(uint256 a, uint256 b) public pure returns(uint256){
        uint256 mod = a % b;
        return mod;
    }

    function averageCalc(uint256 a, uint256 b) public pure returns(uint256){
        uint256 avg = (a + b)/ 2;
        return avg;
    }

    // logical functions
    
    function andConditionVerify(bool a, bool b) public pure returns(bool){
        bool result = a && b;
        return result;
    }

    function orConditionVerify(bool a, bool b) public pure returns(bool){
        bool result = a || b;
        return result;
    }

    function bigVerify(uint256 a, uint256 b) public pure returns(bool){
        bool result = a > b;
        return result;
    }

    function equalVerify(uint256 a, uint256 b) public pure returns(bool){
        bool result = a == b;
        return result;
    }

    function lessVerify(uint256 a, uint256 b) public pure returns(bool){
        bool result = a < b;
        return result;
    }

    // Setting new values on globlal variable

    function setValue(uint256 newValue) public{
        if (newValue >= 10){
            value = newValue;
        }else{
            value = 0;
        }
    }   

    function getValue() public view returns (uint256){
        return value;
    }

    
}