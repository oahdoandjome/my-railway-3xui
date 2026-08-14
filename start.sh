#!/bin/bash
export PORT=${PORT:-2053}
export XUI_PORT=2052

# Render nginx config with Railway's public PORT
envsubst '$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx
nginx

# Start 3x-ui
exec /app/x-ui
