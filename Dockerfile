FROM node:20-alpine

USER node

WORKDIR /home/node

COPY package.json package-lock.json ./
RUN npm install

COPY index.js ./index.js

EXPOSE 3000

CMD ["node", "/home/node/index.js"]