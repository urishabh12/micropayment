pragma solidity ^0.5.0;

import 'openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';

contract Micro is ERC20 {
    address owner;

    struct tr {
        address to;
        uint256 value;
    }
    mapping (address => tr[]) public transacts;
    mapping (address => tr[]) public transactr;

    constructor() public {
        owner = msg.sender;
    }

    function send(address _from, address _to, uint256 _value) public {
        _transfer(_from, _to, _value);
        transacts[_from].push(tr(_to, _value));
        transactr[_to].push(tr(_from, _value));
    }

    function createmicro(uint256 num) public returns (bool) {
        require(msg.sender == owner);
        _mint(msg.sender, num);
        return true;
    }
}