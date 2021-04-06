# Dockerfiles
[![Build Status](https://dev.azure.com/MichalKubista/PostgreSQL%20Dockerfiles/_apis/build/status/kubistmi.docker_postgreSQL?branchName=master)](https://dev.azure.com/MichalKubista/PostgreSQL%20Dockerfiles/_build/latest?definitionId=4&branchName=master)  
A set of dockerfiles that I frequently use.  
Serves mostly as learning project.

## Usage
You can either build the image on your own, or download from DockerHub.

#### DockerHub
Check the [DockerHub](https://hub.docker.com/u/kubistmi) for the image name and pull into your machine.

```{bash}
# download only -----------------------------------------------------------
docker pull kubistmi/IMAGE_NAME

# download (if not already present) and run -------------------------------
# `--restart always` restart if container exits - nice if you want it always running
# `-d` run in detached mode (background, doesn't block your session)
# `-p` port bind, forward container port 5432 to local port 5433
docker run --restart always --name kubistmi/IMAGE_NAME -d -p 5433:5432
```

#### Own Build
1. Download the repo
1. navigate to the `Dockerfile` you want to use
1. rename `config_example.sh` to `config.sh` and edit
1. the `build.sh` script will build the docker image
1. the `run.sh` will start the container

```{bash}
#!/bin/bash

# download
git clone git@github.com:kubistmi/dockerfiles.git

# navigate and edit the config
cd dockerfiles/postgres
mv config{_example,}.sh
vi config.sh

# build and run
./build.sh
./run.sh
```
