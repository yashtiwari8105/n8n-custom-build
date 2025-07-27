# Start with the official n8n image
FROM n8nio/n8n

# Switch to the root user to install software
USER root

# Install ffmpeg and curl (curl is a tool to download files)
RUN apk add --no-cache ffmpeg curl

# Use curl to download the latest yt-dlp program directly
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp

# Make the downloaded program executable so the server can run it
RUN chmod a+rx /usr/local/bin/yt-dlp

# Switch back to the standard n8n user for security
USER node
