FROM node:9

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci --only=production

COPY . .

EXPOSE 5800
CMD [ "npm", "start" ]
