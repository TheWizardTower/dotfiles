FROM fedora
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN dnf install --assumeyes  deltarpm &&\
    dnf update  --assumeyes            ;\
    dnf install --assumeyes             \
    hostname \
    puppet

ADD ./host.pp /root/host.pp

WORKDIR /root

RUN puppet parser validate *.pp &&\
    puppet apply --test *.pp
