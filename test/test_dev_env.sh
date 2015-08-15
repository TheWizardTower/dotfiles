#!/bin/bash

pushd ../docker
docker build -t thewizardtower/dev_env .
popd
