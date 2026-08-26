// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

contract isEvenOdd {
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    function loopSum(uint8 n) public pure returns(uint8){
        uint8 sum = 0;
        for(uint8 i = 0 ; i <= n ; i++){
            sum += i;
        }
        return sum;
    }

    modifier onlyOwner(){
        require(msg.sender == owner , "Must be owner");
        _;
    }

    function addUser() public onlyOwner{
        // For Testing
    }
}