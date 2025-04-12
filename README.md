## DEPLOYED @ SEP

No files changed, compilation skipped
Script ran successfully.

== Logs ==
Deployer: 0xAF7fBBFE990427B0eC8Cc477f9466Aedfc3d2717
AccountImpl: 0xA2DFCC7Fb9b38782CA65904877cdb234bd407A43
Core: 0x714212877F63f296D643318935dc1fC19600426F

## Setting up 1 EVM.

==========================

Chain 11155111

Estimated gas price: 0.002467772 gwei

Estimated total gas used for script: 2530427

Estimated amount required: 0.000006244516898644 ETH

==========================

### sepolia

✅  [Success] Hash: 0x07f4518f649d4c942c059dcacfbff08364242ae41936b2f6b4961d798c77d7ae
Contract Address: 0xA2DFCC7Fb9b38782CA65904877cdb234bd407A43
Block: 8104839
Paid: 0.0000018326687134 ETH (1016365 gas * 0.00180316 gwei)

### sepolia

✅  [Success] Hash: 0xd21b92c1d1f1d0ea0dd7ea1b9df57649f8f555fba7a80e541b52cd64af33f8ff
Contract Address: 0x714212877F63f296D643318935dc1fC19600426F
Block: 8104839
Paid: 0.00000167715157288 ETH (930118 gas * 0.00180316 gwei)

✅ Sequence #1 on sepolia | Total Paid: 0.00000350982028628 ETH (1946483 gas * avg 0.00180316 gwei)

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
