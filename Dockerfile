FROM nginx:latest
    COPY . /usr/share/nginx/html

FROM node:22
    WORKDIR /app
    COPY package*.json ./
    RUN npm install
    COPY . .
    CMD npm run dev