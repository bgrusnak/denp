FROM node:9.7

RUN npm install -g webpack

WORKDIR /app/frontend/static
VOLUME /app/frontend/static/node_modules/

CMD npm install && webpack $WEBPACK_PARAMS --optimize-dedupe --optimize-occurence-order --progress --color --watch
