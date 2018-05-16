#! /bin/bash

# Set pandocker cmd
export PANDOCKER_CMD="-f pandocker.yml"

# Add cabal binaries
PATH=$PATH:/root/.cabal/bin

cmd="$@"

exec $cmd
