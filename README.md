<p align="center">
<img
    src="http://res.cloudinary.com/vidsy/image/upload/v1503160820/CoZ_Icon_DARKBLUE_200x178px_oq0gxm.png"
    width="125px"
  >
</p>

<h1 align="center">neo-storm</h1>

<p align="center">
    Smart contract framework for the NEO smart economy written in the Go programming language.
</p>

<p align="center">
  <a href="https://github.com/CityOfZion/neo-storm/releases">
    <img src="https://img.shields.io/github/tag/CityOfZion/neo-storm.svg?style=flat">
  </a>
  <a href="https://circleci.com/gh/CityOfZion/neo-storm/tree/master">
    <img src="https://circleci.com/gh/CityOfZion/neo-storm/tree/master.svg?style=shield">
  </a>
</p>

# Overview
[NEO](neo.org) is an open network for digital assets, digital identity and smart contracts. NEO supports writing in Java and Kotlin due to JVM, JavaScript due to Oracle Nashorn engine for the JVM support, Python due to Jython,
C# due to their custom neocompiler and Go due to NVM bytecode compiler and NEO Virtual Machine.

Although anti-quantum cryptography mechanism NeoQS is mentioned in the [White Paper](http://docs.neo.org/en-us/whitepaper.html), NEO mainterners actually use [ECC](https://github.com/neo-project/neo/tree/master/neo/Cryptography). Probably, in the sentence ‘NEO System will use NeoQS” the key word is ‘will’.

[Neo-storm](https://github.com/CityOfZion/neo-storm) is a framework for smart-contracts on Go. 


# Installation
Go version 1.11 + supports for ‘modules’ instead of using GOPATH. so use Dockerfile. For Go 10.7+:
```
$ go get -u github.com/CityOfZion/neo-storm
$ cd $GOPATH/src/github.com/CityOfZion/neo-storm
$ dep ensure -update
$ make install
$ neo-storm
```

After the installation is completed, you can find the binary in `bin/neo-storm` or globally use `neo-storm`.
```
$ neo-storm
```

## Project dependencies
### Golang
neo-storm requires a working and proper ***Golang*** installation. To install Golang you can check out these [installation instructions](https://golang.org/doc/install).

### Godep
For package management neo-storm uses ***dep***. To install dep you can check out these [installations instructions](https://github.com/golang/dep).


# Getting started
Lot's of **examples contracts** can be found in the [examples folder](https://github.com/CityOfZion/neo-storm/tree/master/examples).
Play [here](https://neocompiler.io/#/ecolab) or install / run on Docker container and try:

```
neo-storm init --name mycontract
```
This will generate a folder called `mycontract` with a `main.go` file in the root directory.

The folder structure will look like this:
```
- mycontract
    - main.go
```

And will produce the following `main.go` file in the root of the directory:
```
package mycontract

import "github.com/CityOfZion/neo-storm/interop/runtime"

func Main(op string, args []interface{}) {
    runtime.Notify("Hello world!")
}
```

### Compiling smart contracts
To compile a smart contract you can run the `compile` command:
```
neo-storm compile -i path/to/file.go
```
This will output an `.avm` file in the same directory you executed this command in.

You can change location directory of the output file by adding the `-o, --out` flag.
```
neo-storm compile -i path/to/file.go -o path/to/file.avm
```

Deploying an NEP-5 token on the Mainnet will set you back by 490 GAS, so use [neo-privitenet](https://hub.docker.com/r/cityofzion/neo-privatenet/) for testing.

# Tutorials
- [Step-by-step guide on issuing your NEP-5 token on NEO’s Private net using Go](https://medium.com/@likkee.chong/neo-token-contract-nep-5-in-go-f6b0102c59ee)

# Contributing
Feel free to contribute to this project after reading the
[contributing guidelines](https://github.com/CityOfZion/neo-storm/blob/master/CONTRIBUTING.md).

# Contact
- [@anthdm](https://github.com/anthdm) on Github
- [@anthdm](https://twitter.com/anthdm) on Twitter
- [@jeroenptrs](https://github.com/jeroenptrs) on Github
- [@_jptrs](https://twitter.com/_jptrs) on Twitter
- Reach out to us on the [NEO Discord](https://discordapp.com/invite/R8v48YA) channel
- Send us an email: anthony@cityofzion.io

# Licence
- Open-source MIT
