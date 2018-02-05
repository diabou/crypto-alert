FROM node:argon

RUN npm install -g bower && \
    npm install -g polymer-cli &&\
    mkdir frontend backend

WORKDIR backend

COPY package.json ./

RUN npm install

COPY app.js app.js

WORKDIR /

WORKDIR frontend

COPY bower.json index.html polymer.json ./

RUN bower --allow-root install

COPY routes routes

COPY src src

COPY test test

COPY bin bin

CMD ["node", "bin/www"]
