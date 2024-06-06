#!/bin/bash

[[ -z $1 ]] && build=no || build=yes

key=$HOME/Dropbox/.myconfig/github-docker-secret

if [[ "$build" == "yes" ]]
then
   DOCKER_BUILDKIT=1 docker build -t socsci . -f Dockerfile.step2
fi

docker run -e JEKYLL_GITHUB_TOKEN=$(cat $key) --volume="$PWD:/usr/src/app" -p 4000:4000 -it socsci
