#!/usr/bin/env bash
set -e

build() {
    docker build . \
        -t codeblick/shopware-core:ce-${2} \
        --build-arg COB_PHP_VERSION=${1} \
        --build-arg COB_SW_VERSION=${2} \
        -q
}

build 5.6 5.3.0
build 5.6 5.3.1
build 5.6 5.3.2
build 5.6 5.3.3
build 5.6 5.3.4
build 5.6 5.3.5
build 5.6 5.3.6
build 5.6 5.3.7

build 7.0 5.4.0
build 7.0 5.4.1
build 7.0 5.4.2
build 7.0 5.4.3
build 7.0 5.4.4
build 7.0 5.4.5
build 7.0 5.4.6

build 7.2 5.5.0
build 7.2 5.5.1
build 7.2 5.5.2
build 7.2 5.5.3
build 7.2 5.5.4
build 7.2 5.5.5
build 7.2 5.5.6
