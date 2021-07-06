#!/usr/bin/env bash
set -e

build() {
    docker build . \
        -t codeblick/shopware-core:ce-${2} \
        --build-arg COB_PHP_VERSION=${1} \
        --build-arg COB_SW_VERSION=${2}
}

build 7.3 5.6.10
build 7.4 5.7.0
build 7.4 5.7.2
