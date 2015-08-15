#!/bin/bash

pushd ..
docker build -t thewizardtower/emacs_config .
popd
