output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.eks.cluster_name
}

output "kubeconfig" {
  description = "Kubeconfig file content for accessing the cluster"
  value       = module.eks.kubeconfig
  sensitive   = true
}
