// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    // Emitted when the stored number changes
    event NumberChanged(uint256 newnumber);

    // Stores a new number in the contract
    function store(uint256 newNumber) public onlyOwner {
        s_number = newNumber;
        emit NumberChanged(newNumber);
    }

    // Reads the last stored number
    function getNumber() public view returns (uint256) {
        return s_number;
    }
}