FROM node:6

RUN npm install -g bower && \
    npm install -g polymer-cli &&\
    mkdir frontend

WORKDIR frontend

COPY bower.json index.html polymer.json ./

RUN bower --allow-root install

COPY src src

COPY test test

CMD ["bash", "-c", "polymer serve -p 8081 -H 0.0.0.0"]
