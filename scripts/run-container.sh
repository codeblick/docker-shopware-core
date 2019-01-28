#!/usr/bin/env bash
set -e

chown www-data:www-data -R /var/www/html
exec apache2-foreground
