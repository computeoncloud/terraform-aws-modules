variable "rds_id" {
  type        = string
  description = "The name of the RDS instance"
}

variable "db_name" {
  type        = string
  description = "The name of the database to create when the DB instance is created"
}

variable "engine_version" {
  type        = string
  description = "The database engine version"
  default     = "5.7"
}

variable "instance_type" {
  description = "The instance type for the database"
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  type        = number
  description = "The allocated storage in gigabytes"
  default     = 20
}

variable "max_allocated_storage" {
  type        = number
  description = "The upper limit to which Amazon RDS can automatically scale the storage of the DB instance"
  default     = 0 # Disabled by default
}

variable "storage_type" {
  type        = string
  description = "One of standard (magnetic), gp2 (general purpose SSD), or io1 (provisioned IOPS SSD)"
  default     = "gp2"
}

variable "auto_minor_version_upgrade" {
  type        = bool
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
  default     = true
}

variable "allow_major_version_upgrade" {
  type        = bool
  description = "Indicates that major engine upgrades will be applied automatically to the DB instance during the maintenance window"
  default     = false
}

variable "multi_az" {
  type        = bool
  description = "Specifies if the RDS instance is multi-AZ"
  default     = false
}

variable "availability_zone" {
  type        = string
  description = "The AZ for the RDS instance"
  default     = "" # Use the default AZ
}

variable "security_group_ids" {
  type        = list(string)
  description = "A list of VPC security groups to associate"
}

variable "subnet_ids" {
  type        = list(string)
  description = "A list of VPC subnet IDs"
}

variable "backup_retention_period" {
  type        = number
  description = "The days to retain backups for"
  default     = 1
}

variable "backup_window" {
  type        = string
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled"
  default     = "02:00-03:00"
}

variable "maintenance_window" {
  type        = string
  description = "The window to perform maintenance in"
  default     = "sun:03:00-sun:04:00"
}

variable "deletion_protection" {
  type        = bool
  description = "Specifies if the DB instance should have deletion protection enabled"
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource"
  default     = {}
}


variable "username" {
  type        = string
  description = "The master username for the database"
}

variable "password" {
  type        = string
  description = "The master password for the database"
  sensitive   = true
}