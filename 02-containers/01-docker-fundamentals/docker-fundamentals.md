# Docker Fundamentals – Conceptual & Practical Understanding

This document captures my understanding of Docker fundamentals
from a DevOps engineer’s perspective.

The focus is on **how Docker works internally**, **how containers behave**,
and **why containers are used the way they are in production systems**.

---

## 1. What Problem Docker Solves

Traditional application deployment suffered from:
- Environment inconsistencies
- Dependency conflicts
- Manual configuration drift

Docker solves this by packaging:
- Application code
- Runtime
- System libraries
- Configuration

into a **portable, immutable image**.

---

## 2. Docker Architecture

Docker follows a client-server architecture:

- **Docker CLI**: Interface used by users
- **Docker Daemon**: Manages images, containers, networks, volumes
- **Docker Images**: Read-only templates
- **Docker Containers**: Running instances of images

Flow:
Docker CLI → Docker Daemon → Image → Container


This separation allows Docker to manage containers
independently of how commands are issued.

---

## 3. Images vs Containers

### Docker Image
- Immutable
- Read-only
- Blueprint for containers
- Can be reused to create multiple containers

### Docker Container
- Runtime instance of an image
- Ephemeral by design
- Can be stopped, destroyed, and recreated

Key DevOps principle:
> Containers are **replaced**, not **repaired**.

---

## 4. Container Lifecycle

Typical container lifecycle:

1. Image pulled or built
2. Container created
3. Container running
4. Container stopped
5. Container removed

Any data stored inside a container is lost when it is removed
unless volumes are used.

---

## 5. Docker Run – What Actually Happens

The `docker run` command performs multiple actions:

- Pulls the image (if not available locally)
- Creates a container
- Attaches networking
- Executes the defined process

Example:
```bash
docker run -it ubuntu bash

Flags explained:
-i: Interactive input
-t: Allocates a terminal
-d: Detached mode
-p: Port mapping between host and container

6. Why Containers Are Ephemeral

Containers are designed to be:
Stateless
Disposable
Easily reproducible
In DevOps workflows:
Broken containers are destroyed
Fixed versions are redeployed
Infrastructure is treated as code
T
his enables:
Faster recovery
Predictable deployments
Scalable systems

7. Containers in Real DevOps Workflows

In real-world systems:
Dockerfiles define how images are built
Docker Compose manages multi-container applications
Orchestration tools manage scaling and availability