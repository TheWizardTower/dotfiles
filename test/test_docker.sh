#!/bin/bash

pushd ..
docker build -f testDockerfile .
popd
