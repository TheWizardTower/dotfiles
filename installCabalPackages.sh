#!/bin/bash

cabal update
cabal install --avoid-reinstalls --upgrade-dependencies cabal-install
cabal install --avoid-reinstalls --upgrade-dependencies \
      ghc-imported-from\
      ghc-mod \
      hoogle \
      shellcheck \
      stylish-haskell
