-include .env

.PHONY: all test deploy

build :; forge build

test :; forge test

deploy-sepolia :
		@forge script script/DeployRaffle.s.sol:DeployRaffle --rpc-url $(SEPOLIA_RPC_URL) --account myWallet --broadcast -vvvv