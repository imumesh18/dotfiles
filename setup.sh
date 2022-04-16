#!/usr/bin/env bash

set -e

if [[ $OSTYPE == 'darwin'* ]]; then
    ./mac.sh
elif [[ $OSTYPE == "linux-gnu"* ]]; then
    ./linux.sh
fi

./copy.sh
