FROM node:alpine

RUN apk add --no-cache bash

WORKDIR '/app'

COPY package*.json .
RUN npm install
COPY . .

CMD ["npm", "run", "start"]