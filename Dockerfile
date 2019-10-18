ARG COB_PHP_VERSION

FROM codeblick/shopware-base:php-${COB_PHP_VERSION}

ARG COB_SW_VERSION

ENV SW_APP_ENV=development
ENV SW_CDN_URL=0
ENV MYSQL_USER=db_user
ENV MYSQL_PASSWORD=db_password
ENV MYSQL_DATABASE=db_database
ENV MYSQL_HOST=db_host

COPY ./scripts/install-shopware.sh /usr/local/bin/install-shopware
COPY ./assets /tmp/assets

RUN apt update && apt install -qq -y jq unzip && \
    chmod +x /usr/local/bin/install-shopware && \
    install-shopware ${COB_SW_VERSION} && \
    apt autoremove -y && apt clean && rm -rf /var/lib/apt/lists/*

VOLUME /var/www/html
