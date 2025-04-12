## DEPLOYED @ SEP

== Logs ==
  Deployer: 0xAF7fBBFE990427B0eC8Cc477f9466Aedfc3d2717
  AccountImpl: 0x0e4d9e23a381f741D48b5c4984995A937aA4f183
  Core: 0x1c0E0c06d2ad6A579b227fdA19625173c96b4984

## Setting up 1 EVM.

==========================

Chain 11155111

Estimated gas price: 0.001807574 gwei

Estimated total gas used for script: 2435489

Estimated amount required: 0.000004402326593686 ETH

==========================

##### sepolia
✅  [Success] Hash: 0xf52c1e2f19080ee9cbc2d8766df776cbc34e4e54a6bf50bb5d9c061f42052640
Contract Address: 0x1c0E0c06d2ad6A579b227fdA19625173c96b4984
Block: 8105005
Paid: 0.000001193341299391 ETH (857089 gas * 0.001392319 gwei)


##### sepolia
✅  [Success] Hash: 0x764a7dd2b0e090f8f31ff27c0d642126b8332010490bf6a216ee1307a62c9f96
Contract Address: 0x0e4d9e23a381f741D48b5c4984995A937aA4f183
Block: 8105005
Paid: 0.000001415104300435 ETH (1016365 gas * 0.001392319 gwei)

✅ Sequence #1 on sepolia | Total Paid: 0.000002608445599826 ETH (1873454 gas * avg 0.001392319 gwei)
                                                                                                                                                                                                             

==========================

ONCHAIN EXECUTION COMPLETE & SUCCESSFUL.

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
