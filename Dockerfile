FROM n8nio/n8n:latest

# Switch to root user so we have permissions to add group/user
USER root

RUN addgroup --system n8n && adduser --system --ingroup n8n --uid 10001 n8nuser

# Switch to the new user for running container
USER 10001
