#!/bin/bash

# Build all Docker images for Kubernetes deployment
# Usage: ./build-images.sh [registry]
# Example: ./build-images.sh docker.io/myuser

REGISTRY=${1:-"prisma-web"}

echo "Building license-server"
docker build -t ${REGISTRY}/license-server:latest ./render/license-server

echo "Building discord-bot"
docker build -t ${REGISTRY}/discord-bot:latest ./routewalker-discord-bot

echo ""
echo "Images built:"
echo "  - ${REGISTRY}/license-server:latest"
echo "  - ${REGISTRY}/discord-bot:latest"
echo ""
echo "To push to a registry:"
echo "  docker push ${REGISTRY}/license-server:latest"
echo "  docker push ${REGISTRY}/discord-bot:latest"
