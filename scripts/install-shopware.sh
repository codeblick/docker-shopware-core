#!/usr/bin/env bash
set -e

rm /var/www/html/index.html

req_version=$1
version_list=$(curl -s 'http://update-api.shopware.com/v1/releases/install')

for row in $(echo ${version_list} | jq -r '.[] | @base64'); do
    _jq() {
        echo ${row} | base64 --decode | jq -r ${1}
    }

    version=$(_jq '.version')

    if [[ "${version}" = "${req_version}" ]]; then
        url=$(_jq '.uri')

        curl -sS ${url} > /tmp/shopware-core.zip
        unzip -qq /tmp/shopware-core.zip -d /var/www/html

        rm /var/www/html/config.php
        cp /tmp/assets/config.php /var/www/html/config.php

        touch /var/www/html/recovery/install/data/install.lock

        rm /tmp/shopware-core.zip
        rm -r /tmp/assets

        exit 0
    fi
done

exit 1
