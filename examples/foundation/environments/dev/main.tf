module "network" {
  source = "../../../../modules/network"

  name_prefix          = var.name_prefix
  region               = var.region
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  tags                 = var.tags
}

module "ecs_cluster" {
  source = "../../../../modules/ecs-cluster"

  name_prefix = var.name_prefix
  tags        = var.tags
}

module "alb_shared" {
  source = "../../../../modules/alb-shared"

  name_prefix           = var.name_prefix
  vpc_id                = module.network.vpc_id
  public_subnet_ids     = module.network.public_subnet_ids
  alb_security_group_id = module.network.alb_security_group_id
  certificate_arn       = var.certificate_arn
  tags                  = var.tags
}

resource "aws_route53_record" "root_alias" {
  count = var.hosted_zone_id != null && var.root_domain_name != null ? 1 : 0

  zone_id = var.hosted_zone_id
  name    = var.root_domain_name
  type    = "A"

  alias {
    name                   = module.alb_shared.alb_dns_name
    zone_id                = module.alb_shared.alb_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "www_alias" {
  count = var.hosted_zone_id != null && var.www_domain_name != null ? 1 : 0

  zone_id = var.hosted_zone_id
  name    = var.www_domain_name
  type    = "A"

  alias {
    name                   = module.alb_shared.alb_dns_name
    zone_id                = module.alb_shared.alb_zone_id
    evaluate_target_health = true
  }
}
