FROM n8nio/n8n:latest

USER node

WORKDIR /home/node/packages/cli

ENTRYPOINT []

RUN \
  mkdir -p /home/node/.n8n/nodes && \
  cd /home/node/.n8n/nodes && \
  npm install -S n8n-nodes-dataforseo n8n-nodes-mcp
        
ENV N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true

COPY ./entrypoint.sh /
COPY ./entrypoint-worker.sh /
CMD ["/entrypoint.sh"]