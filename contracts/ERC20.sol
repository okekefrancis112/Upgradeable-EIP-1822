// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

  // import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
  import "./Proxiable.sol";


  contract HodlToken is Proxiable{

    //   total supply of hodl token is 100,000,000
      uint256 constant TotalSupply = 100 * (10 ** 18);

      string constant Token = "HoldToken";
      string constant Symbol = "Hdl";
      address owner;

      mapping (address => uint256) public balances;

   // mint the tokens
       function initialize() public {
          require(msg.sender != address(0), "ERC20: mint to the zero address");
          owner = msg.sender;

      }

      function _mint(address _account) public  {
        require(_account != address(0), "ERC20: mint to the zero address");
        balances[_account] += TotalSupply;

    }


  }
