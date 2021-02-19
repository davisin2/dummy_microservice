FROM ubuntu:16.04

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y curl git gcc python2.7 python-pip wget openjdk-8-jdk-headless

#install go1.14
RUN curl --location https://dl.google.com/go/go1.14.linux-amd64.tar.gz | tar xz -C /usr/local

ENV PATH /usr/local/go/bin:$PATH

RUN GOROOT=/usr/local/go GOPATH=/local/lib/go go get -u golang.org/x/lint/golint github.com/golang/mock/mockgen
ENV PATH $PATH:/local/lib/go/bin

WORKDIR /usr/local/bin
RUN curl -fL https://getcli.jfrog.io | sh && chmod 755 jfrog

EXPOSE 8090
WORKDIR /
