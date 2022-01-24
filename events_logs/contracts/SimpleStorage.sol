//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 public favoriteNumber;

    event storedNumber(
        uint256 indexed oldNumber,
        uint256 indexed newNumber,
        uint256 addedNumber,
        address sender
    );

    function store(uint256 _newFavoriteNumber) public {
        emit storedNumber(
            favoriteNumber,
            _newFavoriteNumber,
            favoriteNumber + _newFavoriteNumber,
            msg.sender
        );
        favoriteNumber = _newFavoriteNumber;
    }
}
