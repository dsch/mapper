# we are using ubuntu base image
FROM ubuntu:20.04

ENV TZ=Europe/Vienna
ENV DEBIAN_FRONTEND=noninteractive

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# installing requirements to get and extract prebuilt binaries
RUN apt-get update && apt-get install -y \
 cmake \
 doxygen \
 libcups2-dev \
 libgdal-dev \
 libpolyclipping-dev \
 libproj-dev \
 libqt5sensors5-dev \
 libqt5serialport5-dev \
 libqt5sql5-sqlite \
 qt5-default \
 qt5-image-formats-plugins \
 qtbase5-dev \
 qtbase5-dev-tools \
 qtbase5-private-dev \
 qtpositioning5-dev \
 qttools5-dev \
 qttools5-dev-tools \
 zlib1g-dev

#start the container from bash
CMD [ "/bin/bash" ]
