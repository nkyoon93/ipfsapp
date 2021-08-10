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

    //function checkInbox()
    //    public
    //{
    //    string memory ipfs_hash = ipfsInbox[msg.sender];
    //    if(bytes(ipfs_hash).length == 0) {
    //        emit inboxResponse("Empty Inbox");
    //    } else {
    //        ipfsInbox[msg.sender] = "";
    //        emit inboxResponse(ipfs_hash);
    //    }
    //}  implementing... 'checks ipfs card box status'
}
