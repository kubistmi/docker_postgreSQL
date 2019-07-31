#!/bin/bash
docker build -t $D_IMAGE --build-arg D_USER='' --build-arg D_PASSWD='' --build-arg D_DATABASE='' .