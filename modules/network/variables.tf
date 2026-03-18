variable "name_prefix" {
  description = "Prefix used for all resource names."
  type        = string
}

variable "region" {
  description = "AWS region used to derive availability zones."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDR blocks. Must contain at least two values."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDR blocks. Must contain at least two values."
  type        = list(string)
}

variable "tags" {
  description = "Common tags applied to all resources."
  type        = map(string)
  default     = {}
}
