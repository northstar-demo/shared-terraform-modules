# Foundation example

This example provisions the shared platform components once:

- VPC
- public and private subnets
- shared security groups
- ECS cluster
- shared ALB
- optional Route 53 alias records for a public domain

## Apply order

1. Create the remote state bucket and lock table using the `tf-state-bootstrap` module.
2. Update `backend-config` values to point at that bucket and table.
3. Run Terraform from [`environments/dev`](/Users/harish/Documents/Playground/shared-terraform-modules/examples/foundation/environments/dev).

## Outputs consumed by the app repos

The three application repos read these outputs from the foundation remote state:

- VPC ID
- public subnet IDs
- private subnet IDs
- ALB security group ID
- ECS task security group ID
- ECS cluster name
- ALB DNS name
- ALB hosted zone ID
- HTTP listener ARN

## Optional custom domain

If you want to expose the demo on a public airline domain:

1. Buy or transfer the domain into Route 53, or create a hosted zone for an external domain.
2. Request an ACM certificate in `eu-west-2`.
3. Set `certificate_arn`, `hosted_zone_id`, `root_domain_name`, and `www_domain_name` in `terraform.tfvars`.
4. Re-apply the foundation stack to create HTTPS support and alias records.
