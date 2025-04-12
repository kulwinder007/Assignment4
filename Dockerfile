# Use the official Node.js LTS image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy only package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the app port
EXPOSE 3000

# Start the server
CMD ["node", "src/index.js"]
