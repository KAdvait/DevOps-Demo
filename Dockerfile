FROM node:20-alpine AS base
WORKDIR /app
COPY package*.json ./
RUN npm i --omit=dev
COPY src ./src
EXPOSE 3000
CMD ["node", "src/index.js"]
