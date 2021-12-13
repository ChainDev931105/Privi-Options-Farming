// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;


contract OptionsLM {
    address immutable public tokenReward; // TRAX
    address immutable public tokenStake; // USDC
    address immutable public accTreasury; // base account address

    constructor(
        address _tokenReward, 
        address _tokenStake, 
        address _accTreasury
    ) {
        tokenReward = _tokenReward;
        tokenStake = _tokenStake;
        accTreasury = _accTreasury;
    }

    /*
    */
    function openPos(uint256 _amount) external {
    }

    /*
    */
    function redeem(uint id) external {
    }
    
    function _safeTransfer(
        address token,
        address to,
        uint256 value
    ) internal {
        (bool success, bytes memory data) =
            token.call(abi.encodeWithSelector(erc20.transfer.selector, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }
    
    function _safeTransferFrom(address token, address from, address to, uint256 value) internal {
        (bool success, bytes memory data) =
            token.call(abi.encodeWithSelector(erc20.transferFrom.selector, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))));
    }
}