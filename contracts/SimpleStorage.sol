// SPDX-License-Identifier:MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public favouriteNumber;

    People public person = People({favoriteNumber: 2, name: "AbhikB"});
    People[] public people;

    function store(uint256 favnum) public virtual {
        favouriteNumber = favnum;
        favouriteNumber += 10;
    }

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    function retrieve1() public view returns (People[] memory) {
        return people;
    }
}
