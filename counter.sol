// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

contract Counter {
    uint8 public angka = 0;

    function increment() public {
        angka++;
    }

    function decrement() public {
        angka--;
    }

    function reset() public {
        angka = 0;
    }

    function get() public view returns (uint) {
        return angka;
    }
}