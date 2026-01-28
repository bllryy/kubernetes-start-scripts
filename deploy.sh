#!/bin/bash

# Deploy all services to Kubernetes
# Usage: ./deploy.sh


kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/secrets.yaml
kubectl apply -f k8s/license-server.yaml
kubectl apply -f k8s/discord-bot.yaml
kubectl apply -f k8s/ingress.yaml

echo ""
echo "Deployment complete. Check status:"
echo "  kubectl get pods -n prisma-web"
echo "  kubectl get services -n prisma-web"
