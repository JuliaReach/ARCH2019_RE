# official Julia runtime as a parent image
FROM julia:1.1.0

# install external dependencies:
# - make & C compiler  (for building CRlibm)
# - git  (for cloning the benchmarks)
RUN apt-get update && apt-get -qy install make gcc git

# set working directory
WORKDIR /juliareach

# copy current directory into container
COPY . /juliareach

# install required Julia packages
RUN julia install_dependencies.jl

# clone benchmark repository
RUN git clone https://github.com/JuliaReach/ReachabilityBenchmarks benchmarks && \
    cd benchmarks && \
    git checkout 4bcabbd5e4a31fb0cb52896e2efd750a61aef252 && \
    cd ..

# run when container launches
CMD ["julia", "startup.jl"]


# short manual
#
# to build the container:
# $ docker build . -t juliareach
#
# to run the container:
# $ docker run juliareach
