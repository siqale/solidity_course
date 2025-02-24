// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract arraysExamples{
    string[4] public students;
    string[] public diciplineName;
    string [][] private diciplineTeacher;

    // inserts
    function defineDicipline(string memory _name) external {
        diciplineName.push(_name);
        /*
        uint256 len = diciplineName.length;
        for (uint8 i = 0; i < len -1 ; ++i){
            if(keccak256(abi.encodePacked(&#39;&quot;)) == keccak256(abi.encodePacked(_name))) {
                diciplineName[len- 1] = _name;
            }
        }
        */
    }
    // Excludes 
    function deleteDicipline(uint256 _index) external{
        delete diciplineName[_index];
    }

    // inserts
    function defineStudent(uint8 _num, string memory _studentName) external {
        students[_num] = _studentName;
    } 
    
    // Excludes 
    function deleteStudent(uint256 _index) external{
        delete students[_index];
    }

    function definesDiciplineTeacher(string memory _discipline, string memory _teacher) external{
        diciplineTeacher.push([_discipline, _teacher]);
    }

    function getDiciplineTeacher(uint8 _dicip_index, uint8 _teach_index) external view returns(string memory){
        return diciplineTeacher[_dicip_index][_teach_index];
    }
}