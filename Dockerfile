FROM n8nio/n8n:latest

# Create group and user with UID 10001 (inside allowed range)
RUN addgroup --system n8n && adduser --system --ingroup n8n --uid 10001 n8nuser

# Switch to the new user
USER 10001
