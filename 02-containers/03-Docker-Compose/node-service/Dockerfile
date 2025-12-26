FROM node:lts-alpine3.23

WORKDIR /src
COPY . .
RUN npm install
EXPOSE 4001
CMD ["node", "server.js"]
