FROM n8nio/n8n:latest

USER root

RUN addgroup --system n8n && adduser --system --ingroup n8n --uid 10001 --home /home/n8nuser n8nuser \
    && mkdir -p /home/n8nuser/.n8n \
    && chown -R 10001:10001 /home/n8nuser

USER 10001
