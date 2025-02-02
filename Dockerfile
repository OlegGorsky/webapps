FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy application files
COPY . .

# Build application if needed (uncomment if you have a build step)
# RUN npm run build

# Expose the port CapRover will use
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
