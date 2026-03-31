variable "db_secret_name" {
  type    = string
}

# VPC Configuration

variable "vpc_id" {
  description = "VPC ID where RDS will be deployed"
  type        = string
  
}
variable "subnet_group_name" {
  type = string
  
  
}
variable "sg_group_name" {
  type = string
  
  
}

variable "subnet_ids" {
  description = "List of subnet IDs for RDS subnet group"
  type        = list(string)
  
}


# RDS Configuration

variable "db_identifier" {
  description = "RDS instance identifier"
  type        = string
  
}

variable "db_name" {
  description = "Database name"
  type        = string
  
}

variable "db_engine" {
  description = "Database engine"
  type        = string
  
}

variable "db_engine_version" {
  description = "Database engine version"
  type        = string
  
}

variable "instance_class" {
  description = "RDS instance type"
  type        = string
  
}

variable "allocated_storage" {
  description = "Storage size in GB"
  type        = number
  
}

variable "storage_type" {
  description = "Storage type (gp2/gp3)"
  type        = string
  
}


# Security Group

variable "allowed_cidr_blocks" {
  description = "Allowed CIDR blocks for DB access"
  type        = list(string)
  
}




# Tags

variable "environment" {
  description = "Environment name"
  type        = string
  
}

variable "project" {
  description = "Project name"
  type        = string
  
}