Compiler run successful!
Script ran successfully.

== Logs ==

  Deployer: 0xAF7fBBFE990427B0eC8Cc477f9466Aedfc3d2717
  AccountImpl: 0x4402d073ea722AB69879Be1fC1F1C22CBc96C261
  Core: 0xbcCC18aa7227723Accd4A95c290605cEE4cb946A

## Setting up 1 EVM.

==========================

Chain 11155111

Estimated gas price: 0.00102856 gwei

Estimated total gas used for script: 2442395

Estimated amount required: 0.0000025121498012 ETH

==========================

##### sepolia
✅  [Success] Hash: 0xb5f289702eaa07fef8ec1ba729feaabaaf1b277416c5fbcfc01dc31985e6c22b
Contract Address: 0x4402d073ea722AB69879Be1fC1F1C22CBc96C261
Block: 8105139
Paid: 0.000001077477198675 ETH (1022745 gas * 0.001053515 gwei)


##### sepolia
✅  [Success] Hash: 0x152d1e8496452ad73501d9c08bd71551fbed74b1842f60f18de389e5208b5c64
Contract Address: 0xbcCC18aa7227723Accd4A95c290605cEE4cb946A
Block: 8105139
Paid: 0.000000901830963815 ETH (856021 gas * 0.001053515 gwei)

✅ Sequence #1 on sepolia | Total Paid: 0.00000197930816249 ETH (1878766 gas * avg 0.001053515 gwei)
                                                                                                                                                                                                             

==========================

ONCHAIN EXECUTION COMPLETE & SUCCESSFUL.

Transactions saved to: /Users/daniel/Documents/workspace/persona/contract/broadcast/Deploy.s.sol/11155111/run-latest.json

Sensitive values saved to: /Users/daniel/Documents/workspace/persona/contract/cache/Deploy.s.sol/11155111/run-latest.json

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
