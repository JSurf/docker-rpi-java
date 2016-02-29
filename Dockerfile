FROM resin/rpi-raspbian:jessie

ENV LANG C.UTF-8
ENV TZ Europe/Berlin

RUN echo "deb http://archive.raspberrypi.org/debian/ jessie main" >> /etc/apt/sources.list.d/raspberrypi.list \
    && apt-get update \
    && apt-get install -y oracle-java8-jdk \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
