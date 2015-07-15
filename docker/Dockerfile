FROM centos
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN curl http://fishshell.com/files/linux/RedHat_RHEL-5/fish.release:2.repo > /etc/yum.repos.d/shells:fish:release:2.repo
RUN yum -y update && yum -y install epel-release && yum -y install \
    emacs \
    fish \
    ghc \
    git \
    golang \
    irssi \
    lynx \
    mercurial \
    mc \
    ntop \
    python \
    screen \
    subversion \
    tmux \
    useradd \
    vim \
    w3m

RUN groupadd amccullough && useradd -m -g amccullough -s /usr/bin/fish amccullough

# Run the next command as amccullough. This checks out my github dotfiles repo, and runs some setup/initialization code.
# The syntax is a little peculiar becuase I set my shell to fish, which does && a little differently.
USER amccullough
RUN cd /home/amccullough; and git clone https://github.com/TheWizardTower/dotfiles.git; and cd dotfiles; and bash install.sh
