// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
// Factory Pattern
import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage{

    SimpleStorage[] public simpleStorageArray;
    
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        // address
        // ABI
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
    }
    
}
