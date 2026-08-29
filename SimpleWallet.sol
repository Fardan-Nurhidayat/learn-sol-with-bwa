// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;
contract SimpleWallet {
    address public owner ; 

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable{}

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function withDraw(uint amount) public payable {
        require(msg.sender == owner , "Must be owner fot withdraw");
        (bool success , ) = payable(msg.sender).call{value : amount}("");
        require(success , "Withdraw Failed");
    }

}