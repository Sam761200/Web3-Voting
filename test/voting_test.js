const Voting = artifacts.require("Voting");

contract("Voting", accounts => {
    it("allows a voter to cast a vote", async () => {
        let instance = await Voting.deployed();
        await instance.voteForCandidate("Alice", { from: accounts[0] });
        let voteCount = await instance.votesReceived("Alice");
        assert.equal(voteCount, 1, "Alice should have one vote");
    });
});
