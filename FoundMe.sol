// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract FundMe {

    mapping (address => uint256) public addressToAmountFunded;

    function fund() public payable {
        // cuanto ETH => USD
        addressToAmountFunded[msg.sender] += msg.value; // identificativo(desde que wallet) relacionad o con su  value
    }
    
}