FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli

ENTRYPOINT []

RUN \
  mkdir -p /root/.n8n/nodes && \
  cd /root/.n8n/nodes && \
  npm install -S n8n-nodes-dataforseo \
                 n8n-nodes-chatwoot
        
ENV N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true
ENV EXECUTIONS_MODE=queue

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]