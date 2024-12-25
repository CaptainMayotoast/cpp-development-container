# Boost image

## Documentation

https://www.boost.org/doc/libs/1_81_0/more/getting_started/unix-variants.html

## Building the Docker image from Dockerfile

1. `docker build -f Dockerfile.boost -t boost:latest .`

## Installation

Steps:

1. `./bootstrap.sh --prefix=path/to/installation/prefix`
> https://www.boost.org/doc/libs/1_81_0/more/getting_started/unix-variants.html#easy-build-and-install

2. `./b2 install`

3. `./b2 headers`
