#!/bin/bash

export GOPATH="/home/amccullough/gocode"

go get -u github.com/golang/lint/golint
go get -u github.com/dougm/goflymake
go get -u github.com/nsf/gocode
go get -u github.com/kisielk/errcheck
go get -u github.com/peco/peco/cmd/peco
go get -u golang.org/x/tools/cmd/goimports
