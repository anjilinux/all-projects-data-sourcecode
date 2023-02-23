output "region" {
  description = "AWS region"
  value       = var.region
}

# EKS Outputs

output "cluster_id" {
  description = "EKS cluster ID"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = local.cluster_name
}

# RDS Outputs

output "rds_hostname" {
  description = "RDS instance hostname"
  value       = aws_db_instance.luxxy.address
  sensitive   = true
}

output "rds_port" {
  description = "RDS instance port"
  value       = aws_db_instance.luxxy.port
  sensitive   = true
}

output "rds_username" {
  description = "RDS instance root username"
  value       = aws_db_instance.luxxy.username
  sensitive   = true
}

# S3 Outputs

output "s3_bucket" {
  description = "RDS instance root username"
  value       = aws_s3_bucket.b.bucket
  sensitive   = false
}