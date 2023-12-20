# ARCH2019 AFF & NLN

This is the JuliaReach repeatability evaluation (RE) package for the ARCH-COMP
2019 category reports *Continuous and Hybrid Systems with Linear Continuous
Dynamics* and *Continuous and Hybrid Systems with Nonlinear Dynamics* of the 3rd
International Competition on Verifying Continuous and Hybrid Systems
(ARCH-COMP '19).

To cite the works, you can use:

```
@inproceedings{AlthoffBFFK0SS19,
  author    = {Matthias Althoff and
               Stanley Bak and
               Marcelo Forets and
               Goran Frehse and
               Niklas Kochdumper and
               Rajarshi Ray and
               Christian Schilling and
               Stefan Schupp},
  editor    = {Goran Frehse and
               Matthias Althoff},
  title     = {{ARCH-COMP19} Category Report: Continuous and Hybrid Systems with
               Linear Continuous Dynamics},
  booktitle = {{ARCH}},
  series    = {EPiC Series in Computing},
  volume    = {61},
  pages     = {14--40},
  publisher = {EasyChair},
  year      = {2019},
  url       = {https://doi.org/10.29007/bj1w},
  doi       = {10.29007/bj1w}
}
```

```
@inproceedings{ImmlerABC0FGKSS19,
  author    = {Fabian Immler and
               Matthias Althoff and
               Luis Benet and
               Alexandre Chapoutot and
               Xin Chen and
               Marcelo Forets and
               Luca Geretti and
               Niklas Kochdumper and
               David P. Sanders and
               Christian Schilling},
  editor    = {Goran Frehse and
               Matthias Althoff},
  title     = {{ARCH-COMP19} Category Report: Continuous and Hybrid Systems with
               Nonlinear Dynamics},
  booktitle = {{ARCH}},
  series    = {EPiC Series in Computing},
  volume    = {61},
  pages     = {41--61},
  publisher = {EasyChair},
  year      = {2019},
  url       = {https://doi.org/10.29007/m75b},
  doi       = {10.29007/m75b}
}
```

## Installation

To build the container, you need the program `docker`.
For installation instructions on different platforms, consult
[the Docker documentation](https://docs.docker.com/install/).
For general information about `Docker`, see
[this guide](https://docs.docker.com/get-started/).

Once you have installed Docker, clone this repository and build the container:

```shell
$ git clone https://github.com/JuliaReach/ARCH2019_RE.git
$ cd ARCH2019_RE
$ docker build . -t juliareach
```

To run the container with the benchmarks, type:

```shell
$ docker run -i juliareach
```

Or to run it interactively, type:

```shell
$ docker run -it juliareach bash

$ julia

julia> include("startup.jl")
```

## Models

The models are copied from
[our model repository](https://github.com/JuliaReach/ReachabilityBenchmarks).
The specific version used here was commit SHA
`4bcabbd5e4a31fb0cb52896e2efd750a61aef252`.

**Important Note.** The `master` branch in this repository is meant to be a
"screenshot" of the package ecosystem for this RE. If you intend to use
`JuliaReach` for other purposes than RE, we strongly recommend that you instead
use the current long-term-support Julia version and follow the installation
instructions in
[Reachability.jl](https://github.com/JuliaReach/Reachability.jl).
Moreover, the
[ReachabilityBenchmarks](https://github.com/JuliaReach/ReachabilityBenchmarks.jl)
project contains updated model files for the latest package versions.

## Plots

The plots are stored in the main folder as `*.png` files.
To obtain these files, run the image interactively, specify an output volume,
and in the end copy the files to the output volume.
In the example below we call the output volume `result`.

```shell
$ docker run -it -v result:/result juliareach bash

$ julia -e 'include("startup.jl")'

$ cp *.png /result
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
