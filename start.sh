#!/bin/bash
export PORT=${PORT:-2053}

# Render nginx config with Railway's public PORT
envsubst '$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx reverse proxy
nginx

# Start 3x-ui panel
exec /app/x-ui
