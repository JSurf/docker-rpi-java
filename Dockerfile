FROM jsurf/rpi-raspbian:latest

RUN [ "cross-build-start" ]

ENV LANG C.UTF-8
ENV TZ Europe/Berlin

RUN apt-get update \
    && apt-get install -y oracle-java8-jdk ca-certificates-java \
    && rm -rf /var/lib/apt/lists/* \
    && ln -s jdk-8-oracle-arm32-vfp-hflt /usr/lib/jvm/java-8-oracle

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN [ "cross-build-end" ]
