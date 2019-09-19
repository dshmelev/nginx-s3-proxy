#!/bin/bash
# default behaviour is to launch nginx
envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf

echo "Starting nginx..."
exec nginx -g "daemon off;"
