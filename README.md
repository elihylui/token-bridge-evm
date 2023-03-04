# EVM-compatible Token Bridge

This repository contains a token bridge which allows users to swap EVM-compatible tokens such as eth and bsc. The ```contracts``` directory contains for smart contracts including those for tokens as well as bridges deployed to eth testnet and bsc testnet respectively. The files sitting under the ```migrations``` folder take care of the deployment of the smart contracts. The ```scripts``` folder holds files to check balance in each account (eth and bsc respectively), transfer tokens between two accounts, as well as to bridge API itself (```eth-bsc-bridge.js```). 

To start the application, firts run ```npm install``` to install all dependencies.

To deploy the smart contracts to testnets, run ```truffle migrate --reset --network ethTestNet``` or ```truffle migrate --reset --network bscTestnet```.

To check balance before transfer, run ```truffle exec scripts/eth-token-balance.js --network ethTestnet``` (should return 1,000), and run ```truffle exec scripts/bsc-token-balance.js --network bscTestnet``` (should return 0).

To run the bridge, on a separate terminal, run:```node scripts/eth-bsc-bridge.js```.

To make a transfer from eth to bsc, run ```truffle exec scripts/eth-bsc-transfer.js --network ethTestnet``` (keep the bridge terminal live, which should return details of the transaction).

To make sure everything works, re-run the commands above to check balance in both eth and bsc accounts - eth should return 0 whilst bsc should return 1,000.

The bridge contracts in this repo have been deployed to eth testnet (contract address: ```0xC9E5Dc3d3Cce24598B88ea59e7b79B7BB47D45d4```) and bsc testnet (contract address: ```0x4C0626228cBD459353A07f80D12e1d5F206375E4```). 
