#!/bin/bash
# default behaviour is to launch nginx
envsubst '\$S3_BUCKET_DOMAIN_NAME \$S3_BUCKET' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf

echo "Starting nginx..."
exec nginx -g "daemon off;"
