#!/bin/bash

pushd ../puppet
docker build -t thewizardtower/puppet .
popd
