# Dockerfiles
[![Build Status](https://dev.azure.com/MichalKubista/Dockerfiles/_apis/build/status/kubistmi.dockerfiles?branchName=master)](https://dev.azure.com/MichalKubista/Dockerfiles/_build/latest?definitionId=2&branchName=master)

A set of dockerfiles that I frequently use.  
Serves mostly as learning project.

## Usage
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
