FROM node:latest

WORKDIR '/reactapp'

COPY package.json .

RUN npm install

COPY . .

CMD [ "npm", "start" ]