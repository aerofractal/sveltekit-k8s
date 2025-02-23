FROM oven/bun:latest

WORKDIR /usr/src/app

COPY build ./

EXPOSE 3000

CMD ["bun", "run", "index.js"]