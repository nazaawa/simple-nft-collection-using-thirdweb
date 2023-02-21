// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/ERC721Base.sol";
import "@thirdweb-dev/contracts/extension/Permissions.sol";


contract Contract is ERC721Base {
    // Any `bytes32` value is a valid role. You can create roles by defining them like this.
    bytes32 public constant NICKNAME_ROLE = keccak256("NICKNAME_ROLE");
      constructor(
        string memory _name,
        string memory _symbol,
        address _royaltyRecipient,
        uint128 _royaltyBps
    )
        ERC721Base(
            _name,
            _symbol,
            _royaltyRecipient,
            _royaltyBps
        )
    {
            
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(NICKNAME_ROLE, msg.sender);
    }


    // mapping of token Id to nickname
    mapping (uint256 => string) tokenNickname;

    //upload the value of the mapping for a token Id
    function updateTokenNickname(uint256 , string calldata _nickname) public onlyRole() {

    }

}