FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli

RUN npm install -g n8n-nodes-dataforseo

ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]