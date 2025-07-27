# Start with the official n8n image
FROM n8nio/n8n

# Switch to the root user to install software
USER root

# Install necessary tools: ffmpeg, python, and pip
RUN apk add --no-cache ffmpeg python3 py3-pip

# Use pip to install the VERY LATEST version of yt-dlp
RUN pip3 install --upgrade yt-dlp

# Switch back to the standard n8n user for security
USER node
