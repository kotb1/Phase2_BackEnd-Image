FROM node:latest as node

WORKDIR /app
COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 5000
CMD [ "node", "app.js" ]