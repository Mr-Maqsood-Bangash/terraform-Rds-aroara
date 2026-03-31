output "rds_endpoint" {
  description = "RDS database endpoint"
  value       = module.rds.rds_endpoint
  sensitive = false
}

output "rds_identifier" {
  description = "RDS instance identifier"
  value       = module.rds.rds_identifier
}

output "rds_security_group_id" {
  description = "Security group ID attached to RDS"
  value = module.rds.rds_security_group_id
}