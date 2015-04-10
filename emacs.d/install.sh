#!/bin/bash

if [[ ! -e ~/.cask ]]
then
    echo "Installing Cask."
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
fi

cask install
