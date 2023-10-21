FROM node:latest

WORKDIR '/reactapp'

COPY package.json ./
COPY package-lock.json ./

RUN npm install
RUN npm i mdb-react-ui-kit
RUN npm i @fortawesome/fontawesome-free

COPY . .

CMD [ "npm", "start" ]