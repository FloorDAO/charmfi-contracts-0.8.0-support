// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

interface IVault {
    function deposit(
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        address to
    )
        external
        returns (
            uint256,
            uint256,
            uint256
        );

    function withdraw(
        uint256 shares,
        uint256 amount0Min,
        uint256 amount1Min,
        address to
    ) external returns (uint256, uint256);

    function getTotalAmounts() external view returns (uint256, uint256);
}
