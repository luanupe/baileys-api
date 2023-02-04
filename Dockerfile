FROM node:14.17.0-alpine

ARG _WORKDIR=/home/node/app
ARG PORT=3000

USER root
RUN apk add git

WORKDIR ${_WORKDIR}

ADD . ${_WORKDIR}
RUN yarn install
RUN yarn build

EXPOSE ${PORT}

CMD yarn start
