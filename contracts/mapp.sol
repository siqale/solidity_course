// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract newClassMapping{
    mapping(string => string) public dictionary;
    mapping(string => uint256) public callList;
    mapping(string => bool) public presence;
    mapping(address => mapping(address => uint256)) public proofNote;

    public function setWordOnDic(string memory _word, string memory meaning){
        dictionary[_word] = meaning;
    }

    public function setCallList(uint256 _number, string memory _student){
        callList[_student]= _number;
    }

    public function setPresence() external{
        presence[msg.sender] = true;
    }

    public function setProofNote(address _student, uint256 _value) external {
        proofNote[msg.sender][_student] = _value;
    }
}