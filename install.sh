#!/bin/bash

git submodule update --init --recursive

dotbot/bin/dotbot -d . -c install.conf.yaml
