#!/usr/bin/env bash

ROOT=${1-.}
DEPTH=${2-1}

find ${ROOT} -mindepth ${DEPTH} -type d | while read DIR
do
    echo "Adding replay gain to ${DIR}/*.flac..."
    metaflac --add-replay-gain "${DIR}/"*.flac
done
