//SPDX-License-Identifier: Unlicense 
pragma solidity ^0.8.0;

contract Whitelist {
    // max # of whitelisted addys allowed
    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressesToWhitelist() public {
        require(!whitelistedAddresses[msg.sender],"Sender has already been whitelisted");
        require(numAddressWhitelisted < maxWhitelistedAddresses, "More addys cant be added, limit reached");
        whitelistedAddresses[msg.sender] = true;
        numAddressWhitelisted += 1;
    }
}
