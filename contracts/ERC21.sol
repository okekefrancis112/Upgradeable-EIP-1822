// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

  import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

    contract HodlToken1 is ERC20 {

    //   total supply of hodl token is 100,000,000
      uint256 constant initialSupply = 100000000;

    // mint the tokens
      constructor() ERC20("HoldToken", "Hdl") {
          _mint(msg.sender, initialSupply );
      }

      function decimals() public view virtual  override returns(uint8){
          return 18;
      }

      
  }