# docker-swiftly-example
A small example for building and running a docker container with the swiftly client installed.

# Build the docker container using the Dockerfile

    docker build -t docker-swiftly-example .

# Run swiftly inside of the docker container

    docker run --rm -it docker-swiftly-example:latest swiftly --help
