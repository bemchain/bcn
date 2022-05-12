pragma solidity ^0.5.10;
// SPDX-License-Identifier: MIT
contract ownable {
    address payable admin;
    modifier isAdmin {
        require(admin == msg.sender,"You should be admin to call this function.");
        _;
    }
    
    constructor() public {
        admin = msg.sender;
    }

    function changeAdmin(address payable _admin) public isAdmin {
        require(admin != _admin,"You must enter a new value.");
        admin = _admin;
    }

    function getAdmin() public view returns(address) {
        return(admin);
    }
    
}