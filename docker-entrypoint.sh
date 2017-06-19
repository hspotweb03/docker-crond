#!/bin/sh

# Init crontab
touch /etc/crontab
crontab /etc/crontab

exec "$@"
