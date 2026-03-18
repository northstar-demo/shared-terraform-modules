output "vpc_id" {
  description = "Foundation VPC ID."
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs used by the shared ALB and low-cost ECS tasks."
  value       = module.network.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs reserved for later expansion."
  value       = module.network.private_subnet_ids
}

output "alb_security_group_id" {
  description = "Shared ALB security group."
  value       = module.network.alb_security_group_id
}

output "ecs_tasks_security_group_id" {
  description = "Shared ECS task security group."
  value       = module.network.ecs_tasks_security_group_id
}

output "cluster_name" {
  description = "Shared ECS cluster name."
  value       = module.ecs_cluster.cluster_name
}

output "cluster_arn" {
  description = "Shared ECS cluster ARN."
  value       = module.ecs_cluster.cluster_arn
}

output "alb_arn" {
  description = "Shared ALB ARN."
  value       = module.alb_shared.alb_arn
}

output "alb_dns_name" {
  description = "Shared ALB DNS name."
  value       = module.alb_shared.alb_dns_name
}

output "alb_zone_id" {
  description = "Shared ALB hosted zone ID."
  value       = module.alb_shared.alb_zone_id
}

output "http_listener_arn" {
  description = "HTTP listener ARN used by all app repos."
  value       = module.alb_shared.http_listener_arn
}

output "https_listener_arn" {
  description = "HTTPS listener ARN if a certificate is provided."
  value       = module.alb_shared.https_listener_arn
}
