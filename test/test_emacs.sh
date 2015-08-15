#!/bin/bash

cd dotfiles
docker build -t thewizardtower/emacs_config .
cd -
