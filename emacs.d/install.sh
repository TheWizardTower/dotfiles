#!/bin/bash

if [[ ! -e ~/.cask ]]
then
    echo "Installing Cask."
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
fi

USER=`whoami`
HOMEDIR="/home/$USER"

if [ $USER = "root" ]; then
   export HOMEDIR="/root/"
fi

echo $HOMEDIR

export PATH="$HOMEDIR/.cask/bin:$PATH"

# ~/.cask/bin/cask install
cask install
