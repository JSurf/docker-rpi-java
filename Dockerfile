FROM jsurf/rpi-raspbian:latest

RUN [ "cross-build-start" ]

ENV LANG C.UTF-8
ENV TZ Europe/Berlin

RUN echo "deb http://archive.raspberrypi.org/debian/ jessie main" >> /etc/apt/sources.list.d/raspberrypi.list \
    && apt-get update \
    && apt-get install -y oracle-java8-jdk \
    && rm -rf /var/lib/apt/lists/* \
    && ln -s jdk-8-oracle-arm32-vfp-hflt /usr/lib/jvm/java-8-oracle

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN [ "cross-build-end" ]