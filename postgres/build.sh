#!/bin/bash
source config.sh
docker build -t $D_IMAGE --build-arg D_USER=$D_USER --build-arg D_PASSWD=$D_PASSWD --build-arg D_DATABASE=$D_DATABASE .