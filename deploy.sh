#!/bin/bash

# Build the Docker image
docker build -t samwise-website .

# Stop and remove the existing container if it exists
docker stop samwise-website-container || true
docker rm samwise-website-container || true

# Run the new container
docker run -d --name samwise-website-container -p 3131:80 samwise-website