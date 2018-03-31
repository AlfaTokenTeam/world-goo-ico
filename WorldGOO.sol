pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract WorldGOO is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function WorldGOO(address _owner)  UpgradeableToken(_owner) {
    name = "WorldGOO";
    symbol = "WGOO";
    totalSupply = 100000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}