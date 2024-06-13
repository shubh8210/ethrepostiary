// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract CardanoCoin {

    // Public variables to store token details
    string public name = 'CardanoCoin';
    string public symbol = 'CDC';
    uint128 public totalSupply;

    // Mapping to store balances of addresses
    mapping(address => uint128) public balances;

    // Mint function to create new tokens
    function mint(address _to, uint128 _amount) public {
        totalSupply += _amount;
        balances[_to] += _amount;
    }

    // Burn function to destroy tokens
    function burn(address _from, uint128 _amount) public {
        require(balances[_from] >= _amount, "Insufficient balance to burn");
        totalSupply -= _amount;
        balances[_from] -= _amount;
    }
}
