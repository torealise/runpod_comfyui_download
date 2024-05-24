#!/bin/bash

echo "#########################"
echo "Downloading dependencies"
echo "#########################"

set -euxo pipefail

aria2c \
  --allow-overwrite=true \
  --auto-file-renaming=false \
  --continue=true \
  --max-connection-per-server=8 \
  --input-file=/home/scripts/download.txt
