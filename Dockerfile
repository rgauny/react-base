FROM node:12.8.1-alpine

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY package.json /usr/src/app/
RUN yarn install

COPY . /usr/src/app

ENV PORT 3000
EXPOSE $PORT
CMD [ "yarn", "start" ]

#cool