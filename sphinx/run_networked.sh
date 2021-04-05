#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${DIR}/../configs.sh

THREADS=8
AUDIO_SAMPLES='audio_samples'

LD_LIBRARY_PATH=./sphinx-install/lib:${LD_LIBRARY_PATH} \
    TBENCH_MAXREQS=10 TBENCH_WARMUPREQS=10 \
    ./decoder_server_networked -t $THREADS &

echo $! > server.pid

sleep 2

export TBENCH_QPS=${TBENCH_QPS:-1} 
export TBENCH_MINSLEEPNS=10000
export TBENCH_AN4_CORPUS=${DATA_ROOT}/sphinx
export TBENCH_AUDIO_SAMPLES=${AUDIO_SAMPLES}
./decoder_client_networked &

echo $! > client.pid

wait $(cat client.pid)

# Cleanup
./kill_networked.sh
rm server.pid client.pid 
