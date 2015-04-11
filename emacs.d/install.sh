#!/bin/bash

if [[ ! -e ~/.cask ]]
then
    echo "Installing Cask."
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
fi

export PATH="/home/amccullough/.cask/bin:$PATH"

cask install
