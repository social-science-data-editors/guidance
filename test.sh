#!/bin/bash
key=$HOME/Dropbox/.myconfig/github-docker-secret
DOCKER_BUILDKIT=1 docker build -t socsci . -f Dockerfile.step2
docker run -e JEKYLL_GITHUB_TOKEN=$(cat $key) --volume="$PWD:/usr/src/app" -p 4000:4000 -it socsci
