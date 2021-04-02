#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
docker image build -t boston-prices:latest .
# Step 1:
# Build image and add a descriptive tag

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -d -p 8000:80 boston-prices:latest

# Step 4 for debug
# List dll ockers
docker ps -a
