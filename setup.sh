#!/usr/bin/env bash

set -e

./copy.sh

if [[ $OSTYPE == 'darwin'* ]]; then
    ./mac.sh
elif [[ $OSTYPE == "linux-gnu"* ]]; then
    ./linux.sh
fi
