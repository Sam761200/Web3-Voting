const Voting = artifacts.require("Voting");

module.exports = function(deployer) {
    // Liste des candidats à fournir au constructeur
    const candidateNames = ["Alice", "Bob", "Charlie"];

    // Déploiement du contrat avec la liste des candidats
    deployer.deploy(Voting, candidateNames);
};
