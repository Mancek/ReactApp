FROM node:24-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./



# Install dependencies
RUN npm ci --production

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Start application
CMD ["npm", "start"]
