#!/bin/bash

cabal update
cabal install --avoid-reinstalls --upgrade-dependencies cabal-install
cabal install --avoid-reinstalls --upgrade-dependencies ghc-imported-from
cabal install --avoid-reinstalls --upgrade-dependencies ghc-mod
cabal install --avoid-reinstalls --upgrade-dependencies hoogle
cabal install --avoid-reinstalls --upgrade-dependencies shellcheck
cabal install --avoid-reinstalls --upgrade-dependencies stylish-haskell
