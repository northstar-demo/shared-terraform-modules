# shared-terraform-modules

Reusable Terraform modules for a low-cost AWS ECS demo platform.

## Modules

- `modules/network`: VPC, subnets, route tables, and security groups
- `modules/ecs-cluster`: shared ECS cluster
- `modules/alb-shared`: shared ALB and listeners
- `modules/app-service`: ECR, log group, IAM roles, ECS task definition, ECS service, target group, and ALB rule
- `modules/tf-state-bootstrap`: S3 backend bucket and DynamoDB lock table

## Foundation example

Use [`examples/foundation/environments/dev`](/Users/harish/Documents/northstar/shared-terraform-modules/examples/foundation/environments/dev) to provision the shared foundation stack.

## Release flow

1. Push this repo to GitHub.
2. Create a tag such as `v0.1.0`.
3. Point the application repos at that tag in their module source URLs.

## IntelliJ usage

- Open this folder as its own IntelliJ project.
- Use the Terraform plugin for formatting and validation.
- Keep module changes small and tag releases so the three app repos can update in a controlled way.
