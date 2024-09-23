# Use an official Node.js runtime as a parent image
FROM node:22-alpine

# Set working directory in container
WORKDIR /web

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Build the application for production
RUN npm run build

# Install PM2 globally
RUN npm install pm2 -g

# Expose the port Nuxt uses
EXPOSE 3000

# Start the application using PM2 with the ecosystem file
CMD ["pm2-runtime", "start", "ecosystem.config.cjs"]
