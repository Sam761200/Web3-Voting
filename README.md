# Système de Vote Décentralisé

Ce projet est un système de vote décentralisé construit sur Ethereum en utilisant Solidity et Truffle. Il permet aux utilisateurs de créer une liste de candidats et de voter de manière sécurisée et transparente.

## Fonctionnalités

- Création d'une liste de candidats au moment du déploiement du contrat.
- Possibilité pour les électeurs de voter une fois pour un candidat.
- Validation des votes pour s'assurer que chaque adresse Ethereum vote une seule fois.
- Comptage des votes en temps réel.

## Prérequis

Avant de commencer, assurez-vous d'avoir installé les éléments suivants :

- [Node.js](https://nodejs.org/)
- [Truffle](https://www.trufflesuite.com/truffle)
- [Ganache](https://www.trufflesuite.com/ganache) pour une blockchain personnelle.

## Installation

Pour installer et configurer le projet localement, suivez ces étapes :

```bash
# Clonez le dépôt
git clone https://github.com/Sam761200/Web3-Voting.git
cd Web3-Voting

# Installez les dépendances NPM
npm install

# Lancez Ganache
# Ouvrez Ganache et assurez-vous qu'il tourne sur le port 7545 (ou configurez truffle-config.js en conséquence)

# Compilez les contrats
truffle compile

# Migrez les contrats vers votre blockchain locale
truffle migrate --reset

```

## Utilisation

Pour voter pour un candidat :

```bash
truffle console
let contract = await Voting.deployed()
await contract.voteForCandidate('Nom_du_candidat', {from: 'adresse_du_votant'})
```

Pour afficher le nombre de votes pour un candidat :

```bash
let votes = await contract.votesReceived('Nom_du_candidat')
console.log(votes.toString())
```

## Licence

Ce projet est distribué sous la licence MIT. Voir le fichier LICENSE pour plus d'informations.
