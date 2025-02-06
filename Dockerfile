FROM node:18-alpine AS builder

WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies with exact flags depending on your package manager
RUN npm ci     # If using package-lock.json
# OR
RUN npm install --frozen-lockfile    # Alternative approach
# OR if using yarn
# RUN yarn install --frozen-lockfile

# Copy all files
COPY . .



# Build the application
RUN npm run build