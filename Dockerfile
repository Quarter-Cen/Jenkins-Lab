FROM nginx:latest
    COPY . /usr/share/nginx/html

FROM node:22
    RUN mkdir -p /src/app
    WORKDIR /usr/src/app
    COPY package.json /usr/src/app/
    RUN npm install
    COPY . /src/app
    EXPOSE 3000
    CMD ["npm","start"]