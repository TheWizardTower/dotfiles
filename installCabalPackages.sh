#!/bin/bash

stack setup
stack install ghc-imported-from
stack install ghc-mod
stack install hoogle
stack install shellcheck
stack install stylish-haskell
