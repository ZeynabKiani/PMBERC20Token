

pragma solidity ^0.5.0;
import "../openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "../openzeppelin/contracts/token/ERC20/ERC20Mintable.sol";
import "../openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";

contract PMBT is ERC20, ERC20Detailed("TestToken", "TST", 0), ERC20Mintable, ERC20Burnable
{
    // interface for the money contract
    
    constructor(address _owner, uint256 _quantity) public
    {
        _mint(_owner, _quantity);
    }
}