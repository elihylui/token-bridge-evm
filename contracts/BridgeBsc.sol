// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import './BridgeBase.sol';

contract BridgeBsc is BridgeBase {
  constructor(address token) BridgeBase(token) {}
}
