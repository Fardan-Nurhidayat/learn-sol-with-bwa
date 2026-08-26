// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

contract Animal {
    function sound() public pure virtual returns(string memory){
        return "Sound";
    }
}

contract Cat is Animal {
    function sound() public pure override returns(string memory){
        return "Meow";
    }
}