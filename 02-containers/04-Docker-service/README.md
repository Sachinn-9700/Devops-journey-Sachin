# Docker Swarm – Scalable Nginx Web Application

This project demonstrates how to deploy and manage a scalable
web application using **Docker Swarm** and **Docker Services**.

It focuses on orchestration concepts such as:
- Service creation
- Replicas and scaling
- Built-in load balancing
- Rolling updates

---

## Why Docker Swarm?

Docker Swarm is Docker’s native clustering and orchestration tool.
It helps manage containerized applications by providing:

- High availability
- Service replication
- Load balancing
- Declarative service management

This project acts as a bridge between **Docker Compose** and
**Kubernetes**.

---

## Project Overview

Architecture:

Client → Docker Service → Multiple Nginx replicas

The service runs multiple Nginx containers that are load-balanced
automatically by Docker Swarm.

---

## Key Features Demonstrated

- Swarm initialization
- Docker service creation
- Scaling services up and down
- Rolling image updates
- Clean service removal

## Step 0: Prerequisites

- Docker installed and working
- Basic understanding of Docker images & containers

Verification:
```bash
docker --version
docker info

#Step 1: Initialize Docker Swarm

docker swarm init
Docker engine switched to Swarm mode

Current node became Manager node

Swarm networking enabled

Verify:
docker node ls

#Step 2: Create Docker Service

docker service create --name web-service -p 8080:80  nginx

Creates a service 

Host port 8080 mapped to container port 80

Verify:

docker service ls
docker service ps web-service

#Step 3: Access Running Service

curl http://localhost:8080

or open in browser: http://localhost:8080

#Step 4: Scale the Service

docker service scale web-service=3
Service scaled to 3 replicas

Docker handles load balancing automatically

Verify:

docker service ps web-service

#Step 5: Remove Service

docker service rm web-service
Stops all replicas

Removes service

#Step 6: Leave Docker Swarm
docker swarm leave --force
Swarm mode disabled

Docker returned to standalone mode
