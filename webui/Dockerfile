FROM node:20.11-slim

# Needed for node 15+ see https://stackoverflow.com/a/65443098
WORKDIR /usr/app

RUN apt update && \
    apt install -y wget && \
    rm -rf /var/lib/apt/lists/*

RUN npm install express
RUN npm install redis@v3.1.2
USER node
COPY files/ ./files/
COPY webui.js .
CMD ["node", "webui.js"]
EXPOSE 8080
