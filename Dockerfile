FROM node:lts-alpine

RUN apk add --no-cache dumb-init

WORKDIR /zonemta
COPY . .

RUN npm install --production

ENV ZONEMTA_APPDIR=/zonemta

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD npm start
