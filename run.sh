#!/usr/bin/env bash

WORKDIR=$HOME/JUPYTER_WORK
IMAGE=brunoe/jupyter-db-pg:develop

docker run --rm -it \
    --name ${PWD##*/} \
    --volume JUPYTER_WORKDIR:/home/jovyan/work \
    --volume ${PWD}:/home/jovyan/work/notebooks/ \
    --publish 8888:8888 \
    --env NB_UID=$UID \
    ${IMAGE} $@
