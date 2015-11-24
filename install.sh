#!/bin/bash

git submodule init
git submodule sync
git submodule update

~/dotfiles/dotbot/bin/dotbot -d ~/dotfiles -c ~/dotfiles/install.conf.yaml
