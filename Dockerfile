FROM ghcr.io/mhsanaei/3x-ui:latest

RUN apt-get update && apt-get install -y nginx gettext-base && rm -rf /var/lib/apt/lists/*

COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
