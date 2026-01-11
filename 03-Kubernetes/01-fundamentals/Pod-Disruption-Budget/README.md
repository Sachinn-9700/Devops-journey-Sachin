# Pod Disruption Budget (PDB)

This example demonstrates how Pod Disruption Budgets protect applications
during voluntary disruptions such as:
- Node drain
- Cluster upgrades
- Autoscaling events

## Why nginx deployment?
A simple nginx deployment is used only to show:
- How PDB attaches to a workload
- How `minAvailable` works

This deployment exists **only for PDB demonstration purposes**.
