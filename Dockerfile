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
COPY ./scripts/run-container.sh /usr/local/bin/run-container
COPY ./assets /tmp/assets

RUN apt-get install -qq -y jq && \
    chmod +x /usr/local/bin/install-shopware && \
    chmod +x /usr/local/bin/run-container && \
    install-shopware ${COB_SW_VERSION}

CMD ["run-container"]
