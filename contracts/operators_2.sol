
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Operators2{
    uint256 age = 18;
    bool success;

    string name;
    string myAddress;
    uint256 private pwd;
    uint private mykey = 123456;

    function AgeVerify(uint256 _age) internal view {
        require(_age >= age, "forbidden age");
    }

    function SetNumber (uint _number) external pure returns (uint){
        uint uintReturns = _number +=3;
        return uintReturns;
    }

    function EnterNotSecurePlatform(string memory _name, uint256 _age) external returns (bool) {
        AgeVerify(_age);
        name = _name;
        success = true;
        return success;
    }  

    function pswdGenerator() internal  returns(uint256){
        uint256 randomness = uint256(keccak256(abi.encodePacked(msg.sender, /*block.difficulty,*/ block.prevrandao, block.timestamp))); //random number generator to be added later on the same line of code);
        pwd = randomness; 
        return randomness;
    }

    function EnterSecurePlatfomr(uint256 _pwd) external view returns (string memory){
        require(_pwd == pwd, "forbidden pwd");
        return ('Login successfully');
    }

    function getPassword(uint _key) external view returns (uint256){
        require(_key == mykey, "Incorrect key");
        return pwd;
    }
}