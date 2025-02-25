// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract maapWithArray{
    mapping(address => uint256) public balances;// wallwet balances
    mapping(address => bool) public add; // wallet controll
    address[] public accounts;

    function addFunds(address _account, uint256 _val) external {
        balances[_account] = _val; // value inserted on account balances
        add[_account] = true; // 
        accounts.push(_account);// inserts account on address array accounts 
    }

    function getSizeAccounts() external view returns (uint256){
        return accounts.length;
    }

    function getBalance(uint _index) external view returns (uint256){
        return balances[accounts[_index]];
    }

    function getLastBalance() external view returns (uint256){
        return balances[accounts[accounts.length- 1]];
    }


}