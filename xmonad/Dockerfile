FROM centos
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN curl http://fishshell.com/files/linux/RedHat_RHEL-5/fish.release:2.repo > /etc/yum.repos.d/shells:fish:release:2.repo
RUN yum -y install deltarpm && yum -y update && yum -y install epel-release && yum -y install \
        xmonad

ADD ./xmonad.hs /root/.xmonad/xmonad.hs

RUN xmonad --recompile
