# Base image
FROM node:18

# Create app directory
WORKDIR /app

# Copy dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["node", "src/server.js"]
