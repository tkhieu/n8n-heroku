FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli

RUN mkdir -p /home/root/.n8n/nodes

RUN npm install n8n-nodes-dataforseo --prefix /home/root/.n8n/nodes

ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]