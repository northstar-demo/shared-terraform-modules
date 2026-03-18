output "state_bucket_name" {
  description = "Terraform state S3 bucket name."
  value       = aws_s3_bucket.this.bucket
}

output "lock_table_name" {
  description = "Terraform state lock table name."
  value       = aws_dynamodb_table.this.name
}
