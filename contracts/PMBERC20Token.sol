pragma solidity ^0.5.0;

import "./PMBT.sol";

contract Test
{
    PMBT             _myToken;

    constructor() public
    {
        _myToken = new PMBT(msg.sender, 0);
    }


    /* ****************** */
    /* Core ERC20 Methods */
    /* ****************** */

    function mint(address _account, uint256 _quantity) public
    {
        _myToken.mint(_account, _quantity);
    }

    function increaseAllowance(address _spender, uint256 _quantity)public
    {
        _myToken.increaseAllowance(_spender, _quantity);
    }

    function approve(uint256 _quantity)public 
    {
        _myToken.approve(address(this), _quantity);
    }

    function burnFrom(address _spender, uint256 _quantity) public
    {
        _myToken.burnFrom(_spender, _quantity);
    }

    function burn(uint256 _quantity)public
    {
        _myToken.burn(_quantity);
    }

    /* ************* */
    /* Views Methods */
    /* ************* */

    function balanceOf(address _account)public view returns (uint256)
    {
        return (_myToken.balanceOf(_account));
    }

    function getAccount()public view returns (address)
    {
        return msg.sender;
    }

    function getContractAddress()public view returns (address)
    {
        return address(this);
    }

    function getAllowance(address _contractAddress, address _account)public view returns (uint256)
    {
        return _myToken.allowance(_contractAddress, _account);
    }
}
