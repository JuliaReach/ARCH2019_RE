# ARCH2019_RE

This is the repeatability evaluation package for the 3rd International Competition on Verifying Continuous and
Hybrid Systems Friendly Competition (ARCH2019).

This year the ARCH workshop will be held on April 15, 2019, in Montreal, as part of [Cyber-Physical Systems and
Internet-Of-Things Week](http://cpslab.cs.mcgill.ca/cpsiotweek2019/).

## Installation

To build the container, you need the command line `docker`.
For installation instruction on different platforms, consult [the Docker documentation](https://docs.docker.com/install/).
For general information about `Docker`, see the [getting started](https://docs.docker.com/get-started/) guide.

Once you have installed docker, clone this repository and build the container:

```shell
$ git clone https://github.com/JuliaReach/ARCH2019_RE.git
$ cd ARCH2019_RE
$ docker build . -t juliareach
```

To run the container, type:

```shell
$ docker run -i juliareach
```

## Models

The models are copied from [our model repository](https://github.com/JuliaReach/ReachabilityBenchmarks).
The specific version used here was commit SHA 4bcabbd5e4a31fb0cb52896e2efd750a61aef252.
