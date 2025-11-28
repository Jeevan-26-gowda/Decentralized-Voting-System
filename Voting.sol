// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
    
    // Structure to model a Candidate
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    // Store candidates in a dynamic array
    Candidate[] public candidates;

    // Mapping to track if an address has already voted
    mapping(address => bool) public hasVoted;

    // Event acts like a system log/print statement
    event VotedEvent(uint256 indexed candidateId);

    // Constructor: Runs once when you deploy. We add two candidates by default.
    constructor() {
        addCandidate("Alice");
        addCandidate("Bob");
    }

    // Internal function to add a candidate (private helper)
    function addCandidate(string memory _name) private {
        candidates.push(Candidate(candidates.length, _name, 0));
    }

    // Main function: Cast a vote
    function vote(uint256 _candidateId) public {
        // 1. Check if the voter has already voted
        require(!hasVoted[msg.sender], "You have already voted.");

        // 2. Check if the candidate ID is valid
        require(_candidateId < candidates.length, "Invalid candidate ID.");

        // 3. Record that this voter has voted
        hasVoted[msg.sender] = true;

        // 4. Increment the candidate's vote count
        candidates[_candidateId].voteCount++;

        // 5. Trigger event
        emit VotedEvent(_candidateId);
    }

    // Helper function to get total number of candidates
    function getCandidatesCount() public view returns (uint256) {
        return candidates.length;
    }
}
