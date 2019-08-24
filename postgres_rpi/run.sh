#!/bin/bash
source config.sh
docker run --restart always --name $D_CONTAINER -d -p $D_PORT:5432 -v $D_LOCAL:$D_REMOTE:Z $D_IMAGE