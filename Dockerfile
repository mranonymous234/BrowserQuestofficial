# Use Node.js 0.10 official image
FROM node:0.10

# Set working directory
WORKDIR /app

# Copy the project files
COPY . /app

# Install legacy dependencies (specific versions)
RUN npm install underscore@1.6.0 log@1.4.0 bison@1.1.1 websocket@1.0.17 websocket-server@1.2.0 sanitizer@0.1.2 memcache@0.3.0

# Expose the default BrowserQuest port
EXPOSE 8000

# Start the server
CMD ["node", "server/js/main.js"]
