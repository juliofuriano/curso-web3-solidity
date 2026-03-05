// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

    contract Cows {
        constructor (){        }
    }
    contract Birds {        
        constructor (){        }
    }
    

contract AnimalFactory {
    Cows public MyCow;
    Birds public MyBirds;

    function createAnimals( ) public {
        MyCow = new Cows();
        MyBirds = new Birds();
    }

}
