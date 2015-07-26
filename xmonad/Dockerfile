FROM fedora
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN dnf install --assumeyes                    deltarpm &&\
    dnf update  --assumeyes --exclude=iputils            ;\
    dnf install --assumeyes                               \
        xmonad

ADD ./xmonad.hs /root/.xmonad/xmonad.hs

RUN xmonad --recompile
