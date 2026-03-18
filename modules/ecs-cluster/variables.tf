variable "name_prefix" {
  description = "Prefix used for all resource names."
  type        = string
}

variable "tags" {
  description = "Common tags applied to all resources."
  type        = map(string)
  default     = {}
}
