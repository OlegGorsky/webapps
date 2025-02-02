#!/bin/bash

# Exit on error
set -e

echo "Starting deployment process..."

# Pull latest changes
echo "Pulling latest changes from git..."
git pull origin main

# Copy environment file if not exists
if [ ! -f .env ]; then
    echo "Creating .env file from .env.example..."
    cp .env.example .env
fi

# Deploy to CapRover
echo "Deploying to CapRover..."
caprover deploy -n YOUR_APP_NAME -b main

echo "Deployment completed successfully!"
