#!/bin/bash

if [ ! -d  ~/.cask/ ]; then
    ln -s ~/.cask ~/dotfiles/cask
fi
    ~/.cask/bin/cask upgrade-cask
