// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    uint public count = 0; 
    function register() external returns (uint256) { 
        count++;
        if(count == 1)
            return 1003; 
        if(count == 2)
            return 123;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        if(!IClassroomV2(msg.sender).isEnrolled())
            return 1230;
        if(IClassroomV2(msg.sender).isEnrolled())
            return 123;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        if(gasleft()>=7000)
            return gasleft();
        else
            return 123;
    }
    // Implementation for the isEnrolled function from the interface
}
