#!/usr/bin/env bash
set -e

push() {
    docker push codeblick/shopware-core:ce-${1}
}

docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}

push 5.6.0
push 5.6.1
push 5.6.2
push 5.6.3
push 5.6.4
push 5.6.5
push 5.6.6
push 5.6.7
push 5.6.8
