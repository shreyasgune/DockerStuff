FROM node:slim

MAINTAINER sgune@gannett.com


EXPOSE 3200

USER root

WORKDIR /opt
CMD mkdir dockanode
WORKDIR /opt/dockanode
COPY server.js .
COPY package.json .
RUN npm install
CMD npm start
