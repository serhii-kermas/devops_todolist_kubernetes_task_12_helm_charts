#!/bin/bash

# Install Ingress Controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

# Install and Deploy Helm Chart
helm install todoapp
helm upgrade todoapp helm-chart/todoapp -n default