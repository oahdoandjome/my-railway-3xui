#!/bin/bash

# Ensure runtime directory exists for Alpine Nginx
mkdir -p /run/nginx

# Force 3x-ui to listen internally on port 2052
export XUI_PORT=2052

# Start Nginx in background
nginx

# Start 3x-ui
exec /app/x-ui
