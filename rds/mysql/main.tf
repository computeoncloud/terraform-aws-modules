locals {
  engine                = "mysql"
  copy_tags_to_snapshot = true
}

resource "aws_db_subnet_group" "default" {
  name        = "${var.rds_id}-subnet-group"
  description = "Subnet group for ${var.db_name} RDS instance"
  subnet_ids  = var.subnet_ids
  tags        = var.tags
}

resource "aws_db_instance" "default" {
  identifier     = var.rds_id
  db_name        = var.db_name
  engine         = local.engine
  engine_version = var.engine_version
  instnace_class = var.instance_type

  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
  storage_type          = var.storage_type

  auto_minor_version_upgrade  = var.auto_minor_version_upgrade
  allow_major_version_upgrade = var.allow_major_version_upgrade

  multi_az               = var.multi_az
  availability_zone      = var.availability_zone
  vpc_security_group_ids = var.security_group_ids
  db_subnet_group_name   = aws_db_subnet_group.default.name

  backup_retention_period = var.backup_retention_period
  backup_window           = var.backup_window
  maintenance_window      = var.maintenance_window


  copy_tags_to_snapshot = local.copy_tags_to_snapshot
  deletion_protection   = var.deletion_protection

  username = var.username
  password = var.password

  depends_on = [
    aws_db_subnet_group.default
  ]

  tags = var.tags
}