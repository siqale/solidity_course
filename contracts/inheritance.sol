// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract granfather{
    string public name;

    constructor(string memory _name){
        name = _name;
    }
}

contract father{
    string public text;

    constructor(string memory _text){
        text = _text;
    }
}

// Method one
contract childOne is granfather("granfather_name"), father("father_text"){
    // code here
}

// Method twoo - more used
contract childTwoo is granfather, father{
    // code here
    constructor(string memory _granfatherName, string memory _fatherText) granfather(_granfatherName) father(_fatherText){}
    // ...
} 

// Method tree
contract childTree is granfather, father{
    // code here
    constructor()granfather("Granfather was called") father("Father was called"){}
    // ...
}