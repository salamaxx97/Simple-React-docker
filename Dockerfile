FROM node AS builder

WORKDIR /app

RUN  npx create-react-app my-react-app -y 

WORKDIR /app/my-react-app

RUN npm install

RUN npm run build

#########################

FROM nginx:alpine

COPY --from=builder /app/my-react-app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

