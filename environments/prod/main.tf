module "rds" {
  source = "../../modules/rds"

  vpc_id             = var.vpc_id
  subnet_group_name  = var.subnet_group_name
  sg_group_name      = var.sg_group_name
  subnet_ids         = var.subnet_ids

  db_identifier      = var.db_identifier
  db_name            = var.db_name
  db_engine          = var.db_engine
  db_engine_version  = var.db_engine_version
  instance_class     = var.instance_class

  allocated_storage  = var.allocated_storage
  storage_type       = var.storage_type

  allowed_cidr_blocks = var.allowed_cidr_blocks

  environment = var.environment
  project     = var.project
}