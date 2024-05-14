// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {FucntionsClient} from "@chainlink/contracts/src/v0.8/functions/dev/v1_0_0/FunctionsClient.sol";
import {ConfirmedOwner} from "@chainlink/contracts/src/v0.8/shared/access/ConfirmedOwner.sol";
import {FunctionsRequest} from "@chainlink/contracts/src/v0.8/functions/dev/v1_0_0/libraries/FunctionsRequest.sol";

contract FunctionsConsumerExample is FunctionsClient, ConfirmedOwner {
    using FunctionsRequest for FunctionsRequest.Request;

    bytes32 public s_lastRequestId;
    bytes public s_lastResponse;
    bytes public s_lastError;

    error UnexpectedRequestID(bytes32 requestId);

    event Response(bytes32 indexed requestId, bytes response, bytes err);

    // CUSTOM PARAMS - START
    // Sepolia Router adress;
    // Additional Routers can be found at
    // https://docs.chain.link/chainlink-functions/supported-networks
    address router = 0xb83E47C2bC239B3bf370bc41e1459A34b41238D0;

    //Functions SuscriptionsId
    uint64 suscriptionsId = 9999; // Fill this with your suscriptions ID

    //Gas limit for callback tx do not change
    uint32 gasLimit = 300000;

    
}