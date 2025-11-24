// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HorseStoreYul {
  uint256 numberOfHorses;

  // 0xcdfead2e
  function updateHorseNumber(uint256 newNumberOfHorses) external {
    // numberOfHorses = newNumberOfHorses;
    assembly {
      sstore(numberOfHorses.slot, newNumberOfHorses)
    }
  }

  // 0xe026c017
  function readNumberOfHorses() external view returns (uint256) {
    // return numberOfHorses;
    assembly {
      let horses := sload(numberOfHorses.slot)
      mstore(0, horses)
      return(0, 0x20)
    }
  }
}