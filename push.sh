#!/usr/bin/env bash
set -e

push() {
    docker push codeblick/shopware-core:ce-${1}
}

docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}

push 5.4.0
push 5.4.1
push 5.4.2
push 5.4.3
push 5.4.4
push 5.4.5
push 5.4.6

push 5.5.0
push 5.5.1
push 5.5.2
push 5.5.3
push 5.5.4
