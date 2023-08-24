// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract JingoCoin {

    // public variables here
    string public tokenName = "JingoCoin";
    string public tokenAbbrv = "JC";

    uint public totalSupply = 0;

    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mint( address user, uint amount) public {
        balances[user] += amount;
        totalSupply += amount;
    }

    // burn function
    function burn(address burner, uint amount) public {
        bool condition = amount < balances[burner];
        require(condition, "Insufficient JingoCoins");

        balances[burner] -= amount;
        totalSupply -= amount;
    }

}
