# Decentralized Voting System 🗳️

## Project Overview
This repository contains a Solidity-based Smart Contract designed to facilitate a secure voting process on the Ethereum Blockchain. Unlike traditional voting systems, this project leverages blockchain technology to ensure that votes are immutable, transparent, and tamper-proof.

## Key Features
- **Immutability:** Once a vote is cast, it cannot be altered or deleted.
- **Duplicate Prevention:** Uses `mapping` logic to ensure each wallet address can only vote exactly once.
- **Transparency:** The vote count is publicly verifiable on the blockchain.

## Technology Stack
- **Language:** Solidity (v0.8.0)
- **Platform:** Ethereum Virtual Machine (EVM)
- **Tools:** Remix IDE

## How to Deploy
1. Clone this repository or copy the `Voting.sol` code.
2. Open [Remix IDE](https://remix.ethereum.org/).
3. Create a new file, paste the code, and compile using the Solidity Compiler.
4. Deploy the contract to the local VM.
