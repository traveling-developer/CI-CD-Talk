#!/bin/bash

set -e

cd $(dirname $0)

lineLength=100
folder="../src"

command="flutter format -l $lineLength --dry-run --set-exit-if-changed $folder"

exec $command
