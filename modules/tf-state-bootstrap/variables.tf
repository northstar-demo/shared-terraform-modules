variable "bucket_name" {
  description = "Name of the Terraform state S3 bucket."
  type        = string
}

variable "lock_table_name" {
  description = "Name of the DynamoDB lock table."
  type        = string
}

variable "tags" {
  description = "Common tags applied to all resources."
  type        = map(string)
  default     = {}
}
