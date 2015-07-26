FROM fedora
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN dnf install -y deltarpm && dnf -y update && dnf -y install \
    puppet

ADD ./host.pp /root/host.pp

WORKDIR /root

RUN puppet parser validate *.pp &&\
    puppet apply --test *.pp
