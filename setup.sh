#!/bin/sh

echo "SETUP NGINX :"
docker build -t nginx-container ./nginx/
kubectl create -f nginx/ingress.yaml
kubectl get ingress