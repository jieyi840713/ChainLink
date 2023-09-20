pragma solidity ^0.6.6;
import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";

contract ZombieFactory is VRFConsumerbase {
    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    constructor()
        public
        VRFConsumerBase(
            0x8103B0A8A00be2DDC778e6e7eaa21791Cd364625, // VRF Coordinator
            0x779877A7B0D9E8603169DdbD7836e478b4624789 // LINK Token
        )
    {}

    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
    }

    function _generatePseudoRandomDna(
        string memory _str
    ) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }
}
