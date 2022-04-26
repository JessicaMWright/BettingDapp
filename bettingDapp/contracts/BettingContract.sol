//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract BettingReloaded {

    uint256 public minimumBet;
    uint256 public totalBetsOne;
    uint256 public totalBetsTwo;
    struct Player {
        uint256 amountBet;
        uint16 teamSelected;
    }
    mapping(address => Player) public playerInfo;
    mapping(address => bool) public Betters;
    mapping(address => bool) public VoteForTeamOne;
    mapping(address => bool) public VoteForTeamTwo;
    uint256 public BettersCount;
    uint256 public BetterLimit = 50;

    constructor() {
       address owner = msg.sender;
    }

    function makeBet(uint16 _teamSelected) public  payable {
        require(!Betters[msg.sender], "You cannot bet again!");
        require(BettersCount<BetterLimit, "Betting CLOSED");
        playerInfo[msg.sender].amountBet = msg.value;
        playerInfo[msg.sender].teamSelected = _teamSelected;
        Betters[msg.sender] = true;
        BettersCount++;

        if ( _teamSelected == 1){
            VoteForTeamOne[msg.sender] = true;
            totalBetsOne += msg.value;
      }
        else{
            VoteForTeamTwo[msg.sender] = true;
          totalBetsTwo += msg.value;
      }
    }
    
    function chooseWinner(address winner) {
        require(msg.sender = owner);
        if 
        
    }