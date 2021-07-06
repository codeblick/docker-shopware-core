#!/usr/bin/env bash
set -e

push() {
    docker push codeblick/shopware-core:ce-${1}
}

push 5.6.10
push 5.7.0
push 5.7.2
