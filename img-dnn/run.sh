#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${DIR}/../configs.sh

THREADS=24
REQS=100000000 # Set this very high; the harness controls maxreqs

export TBENCH_WARMUPREQS=1000 
export TBENCH_MAXREQS=0
export TBENCH_QPS=${TBENCH_QPS:-800}
export TBENCH_MNIST_DIR=${DATA_ROOT}/img-dnn/mnist
${DIR}/img-dnn_integrated -r ${THREADS} -f ${DATA_ROOT}/img-dnn/models/model.xml -n ${REQS}

