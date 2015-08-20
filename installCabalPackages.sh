#!/bin/bash

cabal update
cabal install ghc-mod
cabal install cabal-install
cabal install shellcheck
cabal install stylish-haskell
cabal install structured-haskell
cabal install ghc-imported-from
cabal install hoogle
