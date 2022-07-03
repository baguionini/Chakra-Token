// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ChakraToken is ERC20, Ownable {
    address public admin;

    constructor() ERC20('Chakra', 'CKRA') {
        _mint(msg.sender, 1_000_000 * 1e18);
    }

    function mint(address _to, uint256 _amount) external onlyOwner{
        _mint(_to, _amount);
    }

    function burn(address _from, uint256 _amount) external onlyOwner{
        _burn(_from, _amount);
    }
}
