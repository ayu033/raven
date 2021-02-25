#!/bin/bash

POOL=asia-rvn.2miners.com:6060
WALLET=RBdAgk68uzQtmLyRWCi5KThzhhRCQimhfB
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-doa

cd "$(dirname "$0")"

chmod +x ./Raven && sudo ./Raven -a kawpow -o $POOL -u $WALLET.$WORKER $@