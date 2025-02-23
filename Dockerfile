FROM node:latest

WORKDIR /usr/src/app

RUN bun run build

COPY build ./

EXPOSE 3000

CMD ["node", "index.js"]