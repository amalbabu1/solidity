// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ballot{
    
    // we need voters and proposal to vote for
    
    //create a voter
    
    struct Voter{
        bool voted;
        uint256 vote; // Proposal number
    }
    
    struct Proposal{
        string name;
        uint256 voteCount;
    }
    
    // Someone organizes voting
    
    address public chairperson;
    
    // state of the contract
    // voter will be identified using his/her address
    
    mapping(address=>Voter) public voters;
    
    
    // Array of Proposals
    Proposal[] public proposals;
    
    //get the Proposals on creation of the contract
    //only chairperson can choose the Proposals
    //voters can vote on it

    constructor(string[] memory proposalNames){
        chairperson = msg.sender;
        
        //add each proposalNames to the Array of Proposals
        
        for(uint256 i=0; i< proposalNames.length; i++){
            proposals.push(Proposal(proposalNames[i],0));
        }
    }
    
    // chairperson can add participants to voters mapping
    
    function giveRightToVote(address voter) public{
        require(
            msg.sender==chairperson,
            "Only chairperson can give right to vote"
            );
            
            require(
            !voters[voter].voted,
            "voter already voted"
            );
            
        
    }
    
    function vote(uint256 proposal) public{
        //indetify voter
        
        Voter storage sender = voters[msg.sender];
        require(
            !sender.voted,"already voted"
            );
        sender.voted = true;
        sender.vote = proposal;
        
        proposals[proposal].voteCount+=1;
    }
    
    function winningProposal() public view returns(uint256 _win){
        uint256 winCount = 0;
        for(uint256 i=0; i<proposals.length;i++){
            if(proposals[i].voteCount>winCount){
                winCount = proposals[i].voteCount;
                _win=winCount;

            }
        }
    }
    
    
function winName()public view returns(string memory){
    return proposals[winningProposal()].name;
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
