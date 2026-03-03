// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; 

contract SimpleStorage {
    
    // 1. Variable de estado que puede ser leída y actualizada [cite: 260, 646]
    uint256 public favoriteNumber; 

    // 2. El mapping que vincula un nombre con un número [cite: 646]
    mapping(string => uint256) public nameToFavoriteNumber;

    // 3. El tipo de dato personalizado (Struct) [cite: 490, 491, 492, 493, 646]
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // 4. El Array público dinámico para guardar las personas [cite: 508, 646]
    Person[] public list_of_people; 

    // 5. Función para guardar/actualizar el número favorito principal [cite: 230, 231, 232, 233]
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // 6. Función de solo lectura (view) para consultar el número principal [cite: 387, 388, 389]
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    // 7. Función para añadir una persona a la lista y al mapping [cite: 514, 515, 516]
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        list_of_people.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
