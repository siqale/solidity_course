// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract functionExamples{
    // public variables (global)
    uint256 public number;
    string public name;
    string public message;

    // no public variables
    uint256 val;

    // internal funcion - just call in contract
    function divNum(uint256 _num) internal{
        uint256 numDiv = _num / 2;
        number = numDiv;
    }

    // external functions - can be calling by a wallet, other contracts or other functions inside in this contract.
    function setMsg(string memory _msg) public{
        message = _msg;
    }

    // this function is external, can be calling only by a wallet or other contract
    function setName(string memory _name, uint256 _num) external{
        name = _name;
        divNum(_num);
        setMsg("was calling by this contract");
    }

    // function to receive payments - uhuhuuuuu or send a payment - cryinggggggg
    function sendEther() external payable {}


}