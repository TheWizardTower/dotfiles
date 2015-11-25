#!/bin/bash

if [ -d  ~/.cask/ ]; then
    ~/.cask/bin/cask upgrade-cask
else
    curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
fi
