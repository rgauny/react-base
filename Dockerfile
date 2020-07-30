FROM node:10
RUN npm install
COPY . ./
CMD [ "npm", "start" ]
#cool