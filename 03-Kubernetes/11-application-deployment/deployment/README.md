# Kubernetes Deployment – Rolling Updates & Rollbacks

This folder demonstrates how Kubernetes Deployments are used to manage
application lifecycle in production.

## What Was Done

- Created a simple HTML web application
- Containerized the application using Docker
- Pushed the image to DockerHub
- Deployed the application using Kubernetes Deployment
- Performed rolling updates using `kubectl apply`
- Verified rollout history
- Rolled back to a previous version using `kubectl rollout undo`

## Key Commands Used

```bash
kubectl apply -f deployment.yaml
kubectl rollout history deployment <deployment-name>
kubectl rollout undo deployment <deployment-name>
