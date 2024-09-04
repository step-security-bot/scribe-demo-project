FROM node:20.2.0-alpine3.16@sha256:f9b54b46639a9017b39eba677cf44c8cb96760ca69dadcc1d4cbd1daea753225

WORKDIR /app

COPY package.* .

RUN npm install

COPY src ./src

CMD node src/app.js
