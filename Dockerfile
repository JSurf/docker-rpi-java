FROM resin/rpi-raspbian:jessie

ENV LANG C.UTF-8
ENV TZ Europe/Berlin

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list.d/webupd.list \
    && echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list.d/webupd.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 \
    && apt-get update \
    && apt-get install oracle-java8-installer \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
