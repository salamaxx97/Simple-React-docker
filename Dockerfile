FROM node AS builder

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build

#########################
FROM node:lts-alpine3.20

WORKDIR /app

COPY --from=builder /app/build /app/build

RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "-s", "build"]

