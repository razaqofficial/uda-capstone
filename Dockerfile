FROM node:alpine

RUN apk add --no-cache bash

WORKDIR '/app'

COPY package*.json .
RUN npm ci --only=production
COPY . .

CMD ["npm", "run", "start"]