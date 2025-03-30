# Architecture

## High-Level Diagram

Git → Jenkins → Terraform (EKS) → Docker → Kubernetes (Deploy) → Ansible (Config) → Prometheus/Grafana (Monitor)


## Components
- **vdi-manager**: Flask app for management (port 5000).
- **vdi-desktop**: Ubuntu + XFCE + VNC (port 5901).
- **EKS**: Managed K8s cluster with 1-3 nodes.
