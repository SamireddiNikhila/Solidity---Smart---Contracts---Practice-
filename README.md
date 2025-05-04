# Solidity Smart Contracts Practice - Zombie Factory

This repository contains my first hands-on practice with Solidity smart contracts, following the [CryptoZombies](https://cryptozombies.io) learning series.

# What I Learned

- How to create a basic smart contract in Solidity
- Declaring structs and dynamic arrays
- Writing and calling functions within a contract
- Emitting and listening to custom events
- Generating pseudo-random values on-chain
- Basic testing using [Remix IDE](https://remix.ethereum.org)

# Contract Details

*Contract Name:* Lesson1_ZombieFactory.sol  
*Purpose:* Generates random zombie characters with unique DNA, stored in a dynamic array

# How to Test the Contract

1. Open [Remix IDE](https://remix.ethereum.org)
2. Create a new file in the File Explorer named Lesson1_ZombieFactory.sol
3. Paste the code from this repository into the file
4. Go to the *Solidity Compiler* tab:
   - Select version 0.8.x
   - Click *Compile*
5. Go to *Deploy & Run Transactions* tab:
   - Select Lesson1_ZombieFactory contract
   - Click *Deploy*
6. Test the functions:
   - Use createRandomZombie("YourZombieName") to generate a new zombie
   - Call zombies(0) to check the stored zombie data
   - Check the Remix terminal for the NewZombie event

# Remix IDE

Launch Remix IDE directly:
[https://remix.ethereum.org](https://remix.ethereum.org)

# Notes

- This is Lesson 1 of the CryptoZombies course
- All code is for learning and experimentation purposes only

