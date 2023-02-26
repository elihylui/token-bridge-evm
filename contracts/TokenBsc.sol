// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

import './TokenBase.sol';

contract TokenBsc is TokenBase {
  constructor() TokenBase('BSC Token', 'BTK') {}
}
