# Chainlink: Decentralized Oracles

## Data Feeds and Computation

### Chainlink Data Feeds and Computation Introduction

Now, let's suppose you're building a DeFi dapp, and want to give your users the ability to withdraw ETH worth a certain amount of USD. To fulfill this request, your smart contract (for simplicity's sake we'll call it the "caller contract" from here onwards) must know how much one Ether is worth.

And here's the thing: a JavaScript application can easily fetch this kind of information, making requests to the Binance public API (or any other service that publicly provides a price feed). But, a smart contract can't directly access data from the outside world.

Now we could build a JavaScript application ourselves, but then we are introducing a centralized point of failure! We also couldn't just pull from the Binance API, because that would be a centralized point of failure!

So what we want to do, is get our data from both a decentralized oracle network (DON) and decentralized data sources.

Chainlink is a framework for decentralized oracle networks (DONs), and is a way to get data in from multiple sources across multiple oracles. This DON aggregates data in a decentralized manner and places it on the blockchain in a smart contract (often referred to as a "price reference feed" or "data feed") for us to read from. So all we have to do, is read from a contract that the Chainlink network is constantly updating for us!

Using Chainlink Data Feeds is a way to cheaply, more accurately, and with more security gather data from the real world in this decentralized context. Since the data is coming from multiple sources, multiple people can partake in the ecosystem and it becomes even cheaper than running even a centralized oracle. The Chainlink network uses a system called Off-Chain Reporting to reach a consensus on data off-chain, and report the data in a cryptographically proven single transaction back on-chain for users to digest.

You can then make protocols like Synthetix, Aave, and Compound with this!

Chainlink Decentralized Oracle Network

You can see visualizations of some of these DONs [here](https://data.chain.link/).

We'll go into exactly how these networks tick in later lessons.

So, let's learn how to read from one of these data feeds!

The first thing we want to do, is start our contract and import the Chainlink code.

### Chainlink VRF

Chainlink VRF is a way to get randomness from outside the blockchain, but in a proven cryptographic manner. This is important because we always want our logic to be truly incorruptible. Another naive attempt at getting randomness outside the blockchain would be to use an off-chain API call to a service that returns a random number. But if that services goes down, is bribed, hacked, or otherwise, you could potentially be getting back a corrupt random number. Chainlink VRF includes on-chain verification contracts that cryptographically prove that the random number the contract is getting is really random.

[Ethereum Data Feeds](https://docs.chain.link/data-feeds/price-feeds/addresses/?network=ethereum&page=1)
[https://docs.chain.link/getting-started/conceptual-overview](https://docs.chain.link/getting-started/conceptual-overview)
[Chainlink Verifiable Randomness Function (Chainlink VRF)](https://docs.chain.link/vrf/v2/subscription/examples/get-a-random-number)

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

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
