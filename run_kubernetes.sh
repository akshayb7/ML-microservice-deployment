#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=akshayb7/boston_houseprice:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run houseprice --image=akshayb7/boston_houseprice:latest --port=80 --cluster='minikube'

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/houseprice 8000:80
