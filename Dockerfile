FROM node:10.16.3-alpine

RUN mkdir /app
WORKDIR /app

COPY ["./package.json", "yarn.lock", "./"]
RUN yarn install

COPY src ./src

EXPOSE 8888

CMD ["node", "src"]