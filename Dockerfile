###
### Container to host npm/Angular, exposing the HTTP interface on TCP port 4200
###
### Intended to be used using a docker-compose file (see docker-compose.yml in this directory)
###
### Build with: docker-compose build
###
###

FROM node:12-alpine

ENV HOME=/usr/src/app

RUN mkdir -p $HOME
RUN chown -R 1000 ${HOME}

WORKDIR $HOME

RUN apk add --no-cache bash git

RUN yarn global add @angular/cli

EXPOSE 4200
USER 1000



