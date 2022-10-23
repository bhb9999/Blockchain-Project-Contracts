// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.7.6;

contract testContract {
    
   
  //  struct Transferout{
   // . . . 
//}

    address initiator;
    uint256 public finishtime;
    uint256 public GoalAmt;
    uint public mindonation;
    
    mapping(address => uint256) public AddresstoDonatedamt;
    address[] public donors;

    constructor CreateProject(uint256 days, uint256 goal) public {
        initiator = msg.sender;
        finishtime = now + days;
        GoalAmt = goal;
    }

    function donate() public payable {
        require(now < finishtime)
        require(msg.value > mindonation);
        AddresstoDonatedamt[msg.sender] += msg.value;
        donors.push(msg.sender);
    }

    function TransferOut(uint256 _n) public {
        value = _n;
    }

    function get () view public returns (uint256) {
        return value;
    }
}
