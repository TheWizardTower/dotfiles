#!/bin/bash

cd dotfiles/puppet
docker build -t thewizardtower/puppet .
cd -
