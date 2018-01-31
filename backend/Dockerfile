FROM node:argon

RUN mkdir backend

WORKDIR backend

COPY app.js package.json ./

RUN npm install

COPY bin bin

COPY public public

COPY routes routes

COPY views views

CMD ["node", "bin/www"]
