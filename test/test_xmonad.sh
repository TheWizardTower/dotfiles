#!/bin/bash

pushd ../xmonad
docker build -t thewizardtower/xmonad .
popd
