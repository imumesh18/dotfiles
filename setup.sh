#!/usr/bin/env bash

set -e

if [[ $OSTYPE == 'darwin'* ]]; then
    ./brew.sh
elif [[ $OSTYPE == "linux-gnu"* ]]; then
    ./ubuntu.sh
fi

./copy.sh
