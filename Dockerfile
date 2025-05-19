# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY ./app/package.json ./
RUN npm install

# Copy app files
COPY app/ ./

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
