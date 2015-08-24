#!/bin/bash

if [ -d "$HOME/.tmux/plugins/tpm" ]; then
    cd "$HOME/.tmux/plugins/tpm"; git pull
   else
       git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi
