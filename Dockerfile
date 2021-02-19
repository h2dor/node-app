FROM node:14

RUN mkdir /opt/nodeapp1

WORKDIR /opt/nodeapp1

COPY package*.json ./

RUN npm install
RUN npm install pm2@latest -g

COPY . .

EXPOSE 3000

CMD pm2-runtime index.js
