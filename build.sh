#!/usr/bin/env bash
set -e

build() {
    docker build . \
        -t codeblick/shopware-core:ce-${2} \
        --build-arg COB_PHP_VERSION=${1} \
        --build-arg COB_SW_VERSION=${2}
}

build 7.3 5.6.6
build 7.3 5.6.7
build 7.3 5.6.8
