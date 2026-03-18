variable "name_prefix" {
  description = "Prefix used for all resource names."
  type        = string
}

variable "app_name" {
  description = "Application name."
  type        = string
}

variable "cluster_name" {
  description = "ECS cluster name."
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the service runs."
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for ECS tasks."
  type        = list(string)
}

variable "task_security_group_id" {
  description = "Security group ID attached to ECS tasks."
  type        = string
}

variable "listener_arn" {
  description = "ALB listener ARN used for path-based routing."
  type        = string
}

variable "path_patterns" {
  description = "Path patterns routed to this service."
  type        = list(string)
}

variable "listener_rule_priority" {
  description = "Unique ALB listener rule priority for this service."
  type        = number
}

variable "container_port" {
  description = "Container port exposed by the app."
  type        = number
}

variable "container_image" {
  description = "Optional full container image reference. If empty, the module uses its own ECR repository plus image_tag."
  type        = string
  default     = ""
}

variable "image_tag" {
  description = "Image tag used when container_image is not set."
  type        = string
  default     = "latest"
}

variable "cpu" {
  description = "Fargate CPU units."
  type        = number
}

variable "memory" {
  description = "Fargate memory in MiB."
  type        = number
}

variable "desired_count" {
  description = "Desired number of ECS tasks."
  type        = number
}

variable "environment_variables" {
  description = "Environment variables passed to the container."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Common tags applied to all resources."
  type        = map(string)
  default     = {}
}
