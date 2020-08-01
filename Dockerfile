FROM node:10
RUN yarn install
COPY . ./
CMD [ "yarn", "start" ]
#cool