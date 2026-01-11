# KEDA – Event Driven Autoscaling

This folder demonstrates **KEDA (Kubernetes Event Driven Autoscaling)**.

## Why KEDA?
KEDA is used when:
- Scaling depends on events, not CPU/memory
- Examples: queues, cron schedules, Kafka, Prometheus metrics
- More flexible than HPA

## What this example shows
- Cron-based scaling
- Automatic scale up/down based on time
- Integration with existing Kubernetes Deployment

## How it works
- Deployment runs with minimum replicas
- KEDA ScaledObject watches the trigger
- KEDA updates replicas dynamically

## Difference from HPA
| HPA | KEDA |
|----|----|
CPU/Memory based | Event based |
Metrics Server required | External events |
Limited triggers | Many triggers |


