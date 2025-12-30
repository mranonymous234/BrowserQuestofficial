FROM node:0.10.0

WORKDIR /app
COPY . /app

# Download and install npm 1.2.14 manually
RUN curl -L https://registry.npmjs.org/npm/-/npm-1.2.14.tgz | tar xz -C /tmp \
    && cd /tmp/package && node cli.js install -gf

RUN npm install underscore@1.6.0 log@1.4.0 bison@1.1.1 websocket@1.0.17 websocket-server@1.2.0 sanitizer@0.1.2 memcache@0.3.0

EXPOSE 8000
CMD ["node", "server/js/main.js"]
