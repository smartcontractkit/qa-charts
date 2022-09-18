FROM 0xpolygon/polygon-edge:latest

WORKDIR /usr/local/bin

RUN polygon-edge secrets init --data-dir test-chain-1

RUN polygon-edge genesis --consensus ibft --ibft-validators-prefix-path test-chain- --premine=0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266:1000000000000000000000 --bootnode /ip4/0.0.0.0/tcp/10001/p2p/16Uiu2HAmJxxH1tScDX2rLGSU9exnuvZKNM9SoK3v315azp68DLPW

EXPOSE 8545

ENTRYPOINT /usr/local/bin/polygon-edge server --data-dir ./test-chain-1 --chain genesis.json --grpc-address :10000 --libp2p :10001 --jsonrpc :8545 --seal