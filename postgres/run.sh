#!/bin/bash
source config.sh
docker run --restart always --name $D_CONTAINER -d -p 5432:5432 -v $D_LOCAL:$D_REMOTE:Z $D_IMAGE