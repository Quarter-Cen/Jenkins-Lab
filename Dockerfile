FROM node:18-alpine AS builder

WORKDIR /app


COPY package.json package-lock.json ./


RUN npm ci --omit=dev

COPY . .

RUN npm run build && npm prune --omit=dev

