output "service_name" {
  description = "ECS service name."
  value       = aws_ecs_service.this.name
}

output "ecr_repository_url" {
  description = "ECR repository URL."
  value       = aws_ecr_repository.this.repository_url
}

output "target_group_arn" {
  description = "Target group ARN for the app."
  value       = aws_lb_target_group.this.arn
}
