# Start with the official n8n image, which is stable
FROM n8nio/n8n

# Switch to the root user to install software
USER root

# Install ALL necessary tools: ffmpeg for video, python3 for yt-dlp, and curl to download it
RUN apk add --no-cache ffmpeg python3 curl

# Use curl to download the latest yt-dlp program directly to the server's executable path
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp

# Make the downloaded program executable so the server can run it
RUN chmod a+rx /usr/local/bin/yt-dlp

# Switch back to the standard n8n user for security
USER node
