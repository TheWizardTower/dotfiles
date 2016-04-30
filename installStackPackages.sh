#!/bin/bash

stack setup
stack update
stack install ghc-mod
stack install hasktags
stack install hindent
stack install hlint
stack install hoogle
stack install ShellCheck
stack install stylish-haskell

pushd ~/git
git clone https://github.com/carlohamalainen/ghc-imported-from
pushd ghc-imported-from
stack install
popd
# Doing it the cave-man way because there's an elisp file in here
# to make this play with Emacs. Stack stores it as a tgz.
git clone https://github.com/alanz/HaRe.git
pushd HaRe
stack install
popd
