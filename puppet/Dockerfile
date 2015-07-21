FROM centos
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN curl http://fishshell.com/files/linux/RedHat_RHEL-5/fish.release:2.repo > /etc/yum.repos.d/shells:fish:release:2.repo
RUN yum -y update && yum -y install epel-release && yum -y install deltarpm && yum -y install \
    puppet

# Run the next command as amccullough. This checks out my github dotfiles repo, and runs some setup/initialization code.
# The syntax is a little peculiar becuase I set my shell to fish, which does && a little differently.
USER amccullough
RUN git clone https://github.com/TheWizardTower/dotfiles.git &&\
        cd dotfiles &&\
        find . -iname "*.pp" | xarg puppet parser validate
