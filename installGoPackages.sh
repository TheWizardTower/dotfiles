#!/bin/bash

USER=$(whoami)
HOMEDIR="/home/$USER"

if [ "$USER" = "root" ]; then
   export HOMEDIR="/root/"
fi


export GOPATH="${HOMEDIR}/gocode"


go get -u github.com/alecthomas/gometalinter
go get -u github.com/nsf/gocode
go get -u github.com/peco/peco/cmd/peco
go get -u golang.org/x/tools/cmd/guru

$HOMEDIR/gocode/bin/gometalinter --install --update
