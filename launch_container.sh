#!/bin/bash

gpu=$1
WANDB_API_KEY=$(cat ./docker/wandb_key)

docker run \
    --env CUDA_VISIBLE_DEVICES=$gpu \
    --gpus all \
    -e WANDB_API_KEY=$WANDB_API_KEY \
    -v $(pwd):/workspace \
    -v /data:/data \
    --name fast-dit_$gpu \
    --user $(id -u):$(id -g) \
    -itd fast-dit bash
