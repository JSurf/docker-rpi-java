FROM resin/rpi-raspbian:jessie

ENV LANG C.UTF-8

RUN apt-get update && apt-get install -y openjdk-8-jdk
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-armhf
