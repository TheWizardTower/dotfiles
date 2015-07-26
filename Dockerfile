FROM fedora
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN dnf install -y deltarpm && dnf -y update && dnf -y install \
    emacs &&\
    golang

ADD ../dotfiles /root/dotfiles

WORKDIR /root/dotfiles

RUN install.sh &&
   emacs -Q --batch -l /root/.emacs 

