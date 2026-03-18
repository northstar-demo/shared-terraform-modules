output "cluster_name" {
  description = "The ECS cluster name."
  value       = aws_ecs_cluster.this.name
}

output "cluster_arn" {
  description = "The ECS cluster ARN."
  value       = aws_ecs_cluster.this.arn
}
