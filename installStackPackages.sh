#!/bin/bash

stack setup
stack install ghc-imported-from
stack install ghc-mod
stack install HaRe
stack install hasktags
stack install hlint
stack install hoogle
stack install shellcheck
stack install stylish-haskell
