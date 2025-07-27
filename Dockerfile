# Start with the official n8n image
FROM n8nio/n8n

# Switch to the root user to install software
USER root

# Install our required video tools: ffmpeg and yt-dlp
RUN apk add --no-cache ffmpeg yt-dlp

# Switch back to the standard n8n user for security
USER node
