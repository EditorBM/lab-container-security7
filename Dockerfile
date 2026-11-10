FROM node:14-alpine
RUN apk add --no-cache curl wget
ENV API_KEY="sk-test-12345-very-secret"
RUN npm install -g lodash@4.17.19
WORKDIR /app
COPY app.js .
EXPOSE 3000
CMD ["node", "app.js"]
