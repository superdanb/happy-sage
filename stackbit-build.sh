#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://develop.widget.stackbit.com/init.js 60233e943e30340016a02c6f

echo "stackbit-build.sh: finished build"
