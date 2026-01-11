# Kubernetes Fundamentals

This folder explains the **core concepts of Kubernetes** in simple language, from a **DevOps and real-world engineering perspective**.

Kubernetes is a **container orchestration platform** that helps us deploy, scale, manage, and maintain containerized applications **reliably in production**.  
It solves the problems that arise when applications grow beyond a single container or a single machine.

This module focuses on understanding **why Kubernetes exists**, **what problems it solves**, and **how its core building blocks work together**.

---

## Topics Covered in This Folder

In this module, Kubernetes concepts are covered step by step — starting from the basics and moving toward real usage.

### Core Kubernetes Building Blocks
- Pod (single and multi-container)
- Init Containers
- Sidecar Containers
- ReplicaSet
- Deployment
- Service (ClusterIP, NodePort)
- Namespace

### Application Configuration
- ConfigMap (non-sensitive configuration)
- Secrets (sensitive data such as credentials)
- Injecting configuration using:
  - Environment variables
  - Volume mounts

### Application Lifecycle & Reliability
- Rolling updates
- Rollbacks
- Health probes (liveness and readiness)

### Storage Concepts
- PersistentVolume (PV)
- PersistentVolumeClaim (PVC)
- StorageClass
- StatefulSet (for stateful workloads)

### Cluster-Level Components
- DaemonSet (node-level workloads such as logging and monitoring)

Each concept is implemented using **YAML manifests** with hands-on practice.

---

## Repository Organization

This Kubernetes module is organized in a way that reflects **real-world usage**, not just learning.

- **Fundamentals**:  
  Individual Kubernetes concepts explored in isolation to build strong understanding.

- **Project-style structure**:  
  Resources grouped by purpose (application, configuration, storage, infrastructure), similar to production environments.

This approach helps bridge the gap between **learning Kubernetes** and **using Kubernetes professionally**.

## Advanced Kubernetes Topics

In addition to core concepts, this repository also explores:

- Helm for application packaging and templating
- Istio service mesh for traffic management
- KEDA for event-driven autoscaling

These topics demonstrate how Kubernetes is extended in modern production environments.

---

## Learning Outcome

After completing this module, I am able to:

- Explain **why Kubernetes is needed** beyond Docker
- Understand how Kubernetes manages containers at scale
- Deploy and manage stateless and stateful applications
- Externalize application configuration using ConfigMaps and Secrets
- Perform rolling updates and rollbacks safely
- Use persistent storage correctly in Kubernetes
- Understand node-level workloads using DaemonSets
- Structure Kubernetes repositories in a **clean and production-friendly way**

---

## DevOps Perspective

This Kubernetes module is learned with a **DevOps mindset**, focusing on:

- Separation of application, configuration, storage, and infrastructure
- Reliability, scalability, and maintainability
- Preparing for managed Kubernetes platforms such as **AWS EKS**
- Building a strong foundation for monitoring, CI/CD, and GitOps

---

## Final Note

This folder represents **hands-on Kubernetes learning**, not just theoretical knowledge.  
Each YAML file exists to demonstrate **how Kubernetes is used in real systems**, not just how resources are defined.