FROM node:18-alpine

WORKDIR /app

# Copy all application files
COPY . .

# Install dependencies
RUN npm install --production

# Expose the port CapRover will use
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
