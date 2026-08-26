// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

contract userRegistry {
    struct User {
        string name;
        uint8 umur;
    }

    mapping(address => User) public users;

    function register(string memory _name , uint8 _umur) public {
        users[msg.sender] = User(_name , _umur);
    }

    function getUser() public view returns(string memory, uint8){
        User memory user = users[msg.sender];
        return(
            user.name,
            user.umur
        );
    } 
}