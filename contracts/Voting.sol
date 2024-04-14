// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Voting {
    mapping(address => bool) public voters;
    mapping(string => uint) public votesReceived;

    string[] public candidateList;

    constructor(string[] memory candidateNames) {
        require(candidateNames.length > 0, "Candidate list cannot be empty");
        candidateList = candidateNames;
    }

    function voteForCandidate(string memory candidate) public {
        require(!voters[msg.sender], "You have already voted!");
        require(isCandidateValid(candidate), "Not a valid candidate!");

        voters[msg.sender] = true;
        votesReceived[candidate]++;
    }

    function isCandidateValid(
        string memory candidate
    ) public view returns (bool) {
        for (uint i = 0; i < candidateList.length; i++) {
            if (
                keccak256(bytes(candidateList[i])) ==
                keccak256(bytes(candidate))
            ) {
                return true;
            }
        }
        return false;
    }
}
