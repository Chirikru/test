FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY alert.py ./
RUN  yarn install

COPY . /usr/src/app

CMD ["yarn", "start"]
