FROM jsurf/rpi-raspbian:latest

RUN [ "cross-build-start" ]

ENV LANG C.UTF-8
ENV TZ Europe/Berlin

RUN apt-get update \
    && apt-get install -y openjdk-8-jdk-headless \
    && rm -rf /var/lib/apt/lists/* 

RUN [ "cross-build-end" ]
