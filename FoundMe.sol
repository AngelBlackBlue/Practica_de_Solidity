// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {AggregatorV3Interface} from "@chainlink/contracts@1.2.0/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    mapping (address => uint256) public addressToAmountFunded;

    function fund() public payable {
        // cuanto ETH => USD
        addressToAmountFunded[msg.sender] += msg.value; // identificativo(desde que wallet) relacionad o con su  value
    }

    function getVersion() public view returns(uint256) {
        AggregatorV3Interface priceFee = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return priceFee.version();

    }
    
}