# official Julia runtime as a parent image
FROM julia:1.1.0

# install external dependencies:
# - make & C compiler  (for building CRlibm)
RUN apt-get update && apt-get -qy install make gcc

# set working directory
WORKDIR /juliareach

# copy current directory into container
COPY . /juliareach

# install required Julia packages
RUN julia install_dependencies.jl

# run when container launches
CMD ["julia", "startup.jl"]


# short manual
#
# to build the container:
# $ docker build . -t juliareach
#
# to run the container:
# $ docker run juliareach
