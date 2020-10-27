#!/bin/bash
find . -mindepth 2 -type d  | while read dir
do
    echo "Adding replay gain to ${dir}/*.flac..."
    metaflac --add-replay-gain "${dir}/"*.flac
done
