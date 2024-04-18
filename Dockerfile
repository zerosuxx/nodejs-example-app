FROM node:20-alpine

USER node

WORKDIR /home/node

COPY --chown node:node package.json package-lock.json ./
RUN npm install

COPY --chown node:node index.js ./index.js

EXPOSE 3000

CMD ["node", "/home/node/index.js"]