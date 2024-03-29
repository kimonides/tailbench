#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${DIR}/../configs.sh

THREADS=24
AUDIO_SAMPLES='audio_samples'

export LD_LIBRARY_PATH=./sphinx-install/lib:${LD_LIBRARY_PATH}
export TBENCH_QPS=${TBENCH_QPS:-20}
export TBENCH_MAXREQS=0
export TBENCH_WARMUPREQS=10
export TBENCH_MINSLEEPNS=1000 
export TBENCH_AN4_CORPUS=${DATA_ROOT}/sphinx
export TBENCH_AUDIO_SAMPLES=${AUDIO_SAMPLES} 
${DIR}/decoder_integrated -t $THREADS
