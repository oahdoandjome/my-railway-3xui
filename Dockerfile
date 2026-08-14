FROM ghcr.io/mhsanaei/3x-ui:latest

# Install Nginx and required utilities using Alpine's package manager (apk)
RUN apk add --no-cache nginx gettext bash

COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
