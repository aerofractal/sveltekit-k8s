FROM node:latest

WORKDIR /usr/src/app

COPY build ./

EXPOSE 3000

CMD ["node", "index.js"]