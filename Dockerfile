FROM ubuntu

MAINTAINER Toletum "toletum@toletum.org"

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y maven
RUN apt-get install -y git

VOLUME /data

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

