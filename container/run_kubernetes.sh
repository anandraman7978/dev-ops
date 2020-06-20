#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath='anandraman7978/version2'

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run api --image=$dockerpath:latest --port 80
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward api-5d74dc569b-r6chf 8080:80
