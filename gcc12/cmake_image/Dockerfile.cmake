FROM gcc:12.2

ENV DEBIAN_FRONTEND noninteractive

COPY ./install_cmake_latest.sh /

RUN apt update -y && \
    apt install -y wget && \
    chmod u+x ./install_cmake_latest.sh && \
    ./install_cmake_latest.sh
    