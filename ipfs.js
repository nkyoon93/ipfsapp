var ethers = require('ethers');
var url = 'http://127.0.0.1:8545'; //storing ganache's URL in url variable
var provider = new ethers.providers.JsonRpcProvider(url); //creating new ethers.providers.JsonRpcProvider instance and storing
var address = '0xed1a11CE73BF98CEE4a4B928a1bbb2c0512F0785'; //Storing the contract address
var abi = [{ //storing ABI
        "inputs": [{
            "internalType": "string",
            "name": "x",
            "type": "string"
        }],
        "name": "sendHash",
        "outputs": [],
        "stateMutability": "nonpayable",
        "type": "function"
    },
    {
        "inputs": [],
        "name": "getHash",
        "outputs": [{
            "internalType": "string",
            "name": "",
            "type": "string"
        }],
        "stateMutability": "view",
        "type": "function"
    }
];
var contract = new ethers.Contract(address, abi, provider);

contract.getHash().then((result) => {
    document.getElementById("btn").onclick = function() { // onclick event listener on 'btn' div on HTML
        location.href = "https://ipfs.io/ipfs/" + result;
    };
});