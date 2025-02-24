// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract opCodeGas{

    function commonSum(uint256 a, uint256 b) external pure returns (uint256){
        uint256 sum = a + b;
        return sum;
        }
    // using opcodeSum reduces gas around 20% than commomSum
    function opCodeSum(uint256 _a, uint256 _b) external pure returns(uint256){
        uint256 result;
        assembly{
            result := add(_a ,_b)
        }

        return result;
    }
}