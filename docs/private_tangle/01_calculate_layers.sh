#!/bin/bash

scriptdir=$(dirname "$(readlink -f "$0")")
#. $scriptdir/lib.sh

#load_config
echo hello $1 $2 $3
docker run -t --rm -v $scriptdir/data:/data ed2k/docker:layers_calculator layers_calculator_deploy.jar -sigMode CURLP27 -seed $1 -depth 11 -security 1 -layers /data/layers -lstart $2 -lcount $3
