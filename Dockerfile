FROM node:18-alpine AS builder

WORKDIR /app

# Copy package files first to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install

# Then copy the rest of the files
COPY . .

# Build the Next.js application
RUN npm run build
