output "rds_instance_id" {
  description = "The RDS instance ID"
  value       = aws_db_instance.this.id
}

output "rds_endpoint" {
  description = "The RDS instance endpoint"
  value       = aws_db_instance.this.endpoint
}
