locals {
  common_tags = merge(var.tags, {
    ManagedBy = "terraform"
    Module    = "ecs-cluster"
  })
}

resource "aws_ecs_cluster" "this" {
  name = "${var.name_prefix}-ecs-cluster"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }

  tags = merge(local.common_tags, {
    Name = "${var.name_prefix}-ecs-cluster"
  })
}
