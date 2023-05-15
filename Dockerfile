FROM node:8-alpine

WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN cd /usr/src/app && npm install

COPY . /usr/src/app

EXPOSE 8081

ENTRYPOINT ["npm", "run", "development"]