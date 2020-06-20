#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath='db80e0dd7e31'
docker login

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag $dockerpath anandraman7978/version2
# Step 3:
# Push image to a docker repository
docker push anandraman7978/version2

