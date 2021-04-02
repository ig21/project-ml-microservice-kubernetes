#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
user=$1
dockerpath=${user}/boston-prices

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run  boston-prices --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl wait pods/boston-prices --for=condition=complete
kubectl get pods -n default

# Step 4:
# Forward the container port to a host
kubectl port-forward --address 0.0.0.0 boston-prices 8000:80

