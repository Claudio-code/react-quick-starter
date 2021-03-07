FROM node:lts-alpine

RUN mkdir -p /home/app/node_modules && chown -R node:node /home/app

WORKDIR /home/app

COPY package.json yarn.* ./

USER node

RUN yarn

COPY --chown=node:node . ./

EXPOSE 3000

CMD [ "yarn", "start" ]
