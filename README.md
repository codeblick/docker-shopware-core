[![Docker Pulls](https://img.shields.io/docker/pulls/codeblick/shopware-core.svg)](https://hub.docker.com/r/codeblick/shopware-core/)
[![Docker Stars](https://img.shields.io/docker/stars/codeblick/shopware-core.svg)](https://hub.docker.com/r/codeblick/shopware-core/)
[![Build Status](https://travis-ci.org/codeblick/docker-shopware-core.svg?branch=master)](https://travis-ci.org/codeblick/docker-shopware-core)

# codeblick/shopware-core

This image is based on the codeblick docker php images.

## Supported tags

- `ce-5.4.6`

## Environment variables

```dockerfile
ENV SW_APP_ENV=development
ENV SW_CDN_URL=0

ENV MYSQL_USER=db_user
ENV MYSQL_PASSWORD=db_password
ENV MYSQL_DATABASE=db_database
ENV MYSQL_HOST=db_host
```
