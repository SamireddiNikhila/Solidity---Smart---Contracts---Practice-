// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// This contract creates zombies with random DNA based on a given name.
contract ZombieFactory {

    // Event triggered when a new zombie is created
    event NewZombie(uint zombieId, string name, uint dna);

    // The number of digits in the zombie's DNA
    uint dnaDigits = 16;

    // Used to ensure DNA is 16 digits by using modulus
    uint dnaModulus = 10 ** dnaDigits;

    // Zombie struct to store name and DNA
    struct Zombie {
        string name;
        uint dna;
    }

    // Dynamic array to store all zombies
    Zombie[] public zombies;

    // Internal function to create a new zombie and store it
    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
        uint id = zombies.length - 1;
        emit NewZombie(id, _name, _dna); // Emit event when a zombie is created
    }

    // Internal function to generate pseudo-random DNA from a string
    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    // Public function that users can call to create a new random zombie
    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }
   receive() external payable {}
   fallback() external payable {}

}
