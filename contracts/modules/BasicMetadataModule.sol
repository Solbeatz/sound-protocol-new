// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

import { IMetadataModule } from "@core/interfaces/IMetadataModule.sol";
import { ISoundEditionV2 } from "@core/interfaces/ISoundEditionV2.sol";

contract BasicMetadata is IMetadataModule {
    function tokenURI(uint256) external view returns (string memory) {
        string memory baseURI = ISoundEditionV2(msg.sender).baseURI();

        return baseURI;
    }
}
