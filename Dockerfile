FROM ghcr.io/mhsanaei/3x-ui:latest

# Install Nginx and bash
RUN apk add --no-cache nginx bash

COPY nginx.conf /etc/nginx/nginx.conf
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
