variable "region" {
  description = "AWS region for the foundation stack."
  type        = string
  default     = "eu-west-2"
}

variable "name_prefix" {
  description = "Prefix for all shared resources."
  type        = string
  default     = "northstar-demo"
}

variable "vpc_cidr" {
  description = "CIDR block for the shared VPC."
  type        = string
  default     = "10.42.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDR blocks."
  type        = list(string)
  default     = ["10.42.1.0/24", "10.42.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDR blocks."
  type        = list(string)
  default     = ["10.42.11.0/24", "10.42.12.0/24"]
}

variable "certificate_arn" {
  description = "Optional ACM certificate ARN for HTTPS."
  type        = string
  default     = null
}

variable "hosted_zone_id" {
  description = "Optional Route 53 hosted zone ID for public alias records."
  type        = string
  default     = null
}

variable "root_domain_name" {
  description = "Optional apex domain name such as northstarairline.com."
  type        = string
  default     = null
}

variable "www_domain_name" {
  description = "Optional www domain name such as www.northstarairline.com."
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags applied to all shared resources."
  type        = map(string)
  default = {
    Environment = "dev"
    Project     = "northstar-demo"
  }
}
