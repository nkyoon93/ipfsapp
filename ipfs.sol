// SPDX-License_Identifier: MIT

pragma solidity ^0.8.4;
contract ipfs {
    string ipfsHash;
    function sendHash(string memory x) public {
        ipfsHash = x;  //taking string x as input & store value of x --> ipfsHash string
    }
    
    function getHash() public view returns (string memory) {
        return ipfsHash;   //onn;y view&returns the hash, cannot modify 
    }
}
