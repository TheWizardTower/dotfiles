FROM fedora
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN dnf install --assumeyes  deltarpm &&\
    dnf update  --assumeyes            ;\
    dnf install --assumeyes             \
    emacs \
    git \
    golang

ADD * /root/dotfiles/

WORKDIR /root/dotfiles

RUN ./install.sh &&\
   emacs -Q --batch -l /root/.emacs 

