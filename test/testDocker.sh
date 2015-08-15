#!/bin/bash

cd dotfiles
docker build -f testDockerfile .
cd -
