FROM fedora
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN dnf install -y deltarpm && dnf -y update ; dnf -y install \
        xmonad

ADD ./xmonad.hs /root/.xmonad/xmonad.hs

RUN xmonad --recompile
