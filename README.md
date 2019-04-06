# ARCH2019_RE

This is the repeatability evaluation package for the 3rd International Competition on Verifying Continuous and
Hybrid Systems Friendly Competition (ARCH2019).

This year the ARCH workshop will be held on April 15, 2019, in Montreal, as part of [Cyber-Physical Systems and
Internet-Of-Things Week](http://cpslab.cs.mcgill.ca/cpsiotweek2019/).

## Installation

To build the container, you need the command line `docker`.
For installation instruction on different platforms, consult [the Docker documentation](https://docs.docker.com/install/).
For general information about `Docker`, see the [getting started](https://docs.docker.com/get-started/) guide.

Once you have installed Docker, clone this repository and build the container:

```shell
$ git clone https://github.com/JuliaReach/ARCH2019_RE.git
$ cd ARCH2019_RE
$ docker build . -t juliareach
```

To run the container, type:

```shell
$ docker run -i juliareach
```

Or to run it interactivately, type:

```shell
$ docker run -it juliareach bash

$ julia

julia> include("startup.jl")
```

## Models

The models are copied from [our model repository](https://github.com/JuliaReach/ReachabilityBenchmarks).
The specific version used here was commit SHA 4bcabbd5e4a31fb0cb52896e2efd750a61aef252.

## Plots

The plots are stored in the main folder as `*.png` files.
To obtain these files, run the image interactivately, specify an output folder, and in the end copy the files to the output folder.
In the example below we call the output folder `result`.
Make sure that this folder exists.

```shell
$ docker run -it -v result:/result juliareach bash

$ julia

julia> include("startup.jl")

julia> exit()

cp *.png /result
```

Then one can access the plots via the following command from outside:

```shell
$ docker cp FANCY_NAME:/result/ .
```

Here `FANCY_NAME` is the name of the Docker container, which can be found via:

```shell
$ docker container ls --all
```

Here is an example of the output of that command:

```shell
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS                     PORTS               NAMES
1f661e604079        juliareach          "bash"              15 minutes ago      Exited (0) 2 minutes ago                       upbeat_ride
```
