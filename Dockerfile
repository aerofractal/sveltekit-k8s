FROM oven/bun:latest AS build

WORKDIR /app

COPY package.json .

RUN bun install

COPY . .
RUN bun run build:local

FROM node:latest AS run

WORKDIR /usr/src/app

COPY --from=build /app/build ./

EXPOSE 3000

CMD ["node", "index.js"]