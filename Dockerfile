FROM fedora
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN dnf install --assumeyes  deltarpm &&\
    dnf update  --assumeyes            ;\
    dnf install --assumeyes             \
    emacs \
    git \
    golang \
    fish \
    tree

COPY ["emacs", "install.sh", "installGoPackages.sh", "/root/dotfiles/"]
COPY /xmonad/xmonad.hs /root/dotfiles/xmonad/
COPY ["emacs.d/Cask", "emacs.d/install.sh", "/root/dotfiles/emacs.d/"]
COPY ["emacs.d/site-start.d/00_one_off.el", "emacs.d/site-start.d/01_ido.el", "/root/dotfiles/emacs.d/site-start.d/"]

WORKDIR /root/dotfiles

RUN pwd ; tree

RUN ./install.sh &&\
   emacs -Q --batch -l /root/.emacs 

