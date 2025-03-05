// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

address constant ADDR_PRECOMPILE_ADDRESS = 0x9000000000000000000000000000000000000005;

IAuthz constant ADDR_CONTRACT = IAuthz(ADDR_PRECOMPILE_ADDRESS);

interface IAuthz {
    // Transactions
    function saveGrant(
        address grantee,
        string memory denom,
        uint256 amount
    ) external returns (bool success);

    function execGrant(
        address granter,
        address grantee,
        string memory denom,
        uint256 amount
    ) external returns (bool success);

    // Queries
    function grants(
        address granter,
        address grantee,
        string memory denom
    ) external view returns (uint256 amount);
}
