#!/bin/bash

stack setup
stack update
stack install ghc-mod
stack install HaRe
stack install hasktags
stack install hlint
stack install hoogle
stack install ShellCheck
stack install stylish-haskell

pushd ~/git
git clone https://github.com/carlohamalainen/ghc-imported-from
pushd ghc-imported-from
stack install
popd
popd
