#!/bin/bash
# default behaviour is to launch nginx
envsubst '\$S3_BUCKET_DOMAIN_NAME \$S3_BUCKET' < /nginx.template > /usr/local/nginx/conf/nginx.conf

echo "Starting nginx..."
exec /usr/local/nginx/sbin/nginx -g "daemon off;"
