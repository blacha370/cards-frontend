FROM node:16

WORKDIR /frontend

COPY yarn.lock yarn.lock
COPY package.json package.json

RUN yarn

COPY . .

CMD ["yarn", "start"]