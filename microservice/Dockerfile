FROM --platform=linux/amd64 node:19.4-alpine3.16
WORKDIR /app/microservice
COPY ./package.json .
RUN npm install
COPY . .
EXPOSE 5000
CMD ["npm", "start"]