output "alb_arn" {
  description = "Shared ALB ARN."
  value       = aws_lb.this.arn
}

output "alb_dns_name" {
  description = "Shared ALB DNS name."
  value       = aws_lb.this.dns_name
}

output "alb_zone_id" {
  description = "Shared ALB hosted zone ID for Route 53 alias records."
  value       = aws_lb.this.zone_id
}

output "http_listener_arn" {
  description = "HTTP listener ARN."
  value       = aws_lb_listener.http.arn
}

output "https_listener_arn" {
  description = "HTTPS listener ARN, if created."
  value       = try(aws_lb_listener.https[0].arn, null)
}
