FROM fedora
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN /usr/bin/curl -sSL https://s3.amazonaws.com/download.fpcomplete.com/fedora/22/fpco.repo | tee /etc/yum.repos.d/fpco.repo


RUN dnf install --assumeyes  deltarpm &&\
dnf update  --assumeyes            ;\
dnf install --assumeyes             \
emacs \
git \
golang \
fish \
python \
stack \
tree

ADD . /root/dotfiles

WORKDIR /root/dotfiles

RUN pwd ; tree

RUN ./install.sh &&\
emacs -Q --batch -l /root/.emacs
