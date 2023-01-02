variable "publicly_accessible" {
  description = "(Optional) Bool to control if instance is publicly accessible"
  type        = bool
  default     = false
}

variable "allocated_storage" {
  type        = number
  description = "Storage size in GB"
  default     = null
}

variable "max_allocated_storage" {
  type        = number
  description = "Argument higher than the allocated_storage to enable Storage Autoscaling, size in GB. 0 to disable Storage Autoscaling"
  default     = 0
}

#variable "storage_type" {
#  type        = string
#  description = "The instance storage type"
#  default     = "gp2"
#}
#
#variable "iops" {
#  type        = number
#  description = "The amount of provisioned IOPS. Setting this implies a storage_type of io1"
#  default     = null
#}

variable "engine" {
  type = string
}

variable "engine_version" {
  type    = string
  default = ""
}

variable "instance_class" {
  type = string
}

variable "database_name" {
  description = "Database Name"
  type        = string
  default     = ""
}

#variable "retention" {
#  type        = number
#  description = "Snapshot retention period in days"
#  default = 30
#}

variable "username" {
  type        = string
  description = "DB User"
}

variable "apply_immediately" {
  type        = bool
  default     = false
  description = "Apply changes immediately or wait for the maintainance window"
}

variable "subnet_ids" {
  description = "The VPC Subnet IDs to launch in"
  type        = list(string)
}

variable "skip_final_snapshot" {
  type        = bool
  default     = true
}

#variable "kms_key_arn" {
#  type        = string
#  default     = ""
#  description = "KMS Key ARN to use a CMK instead of default shared key, when storage_encrypted is true"
#}

#variable "storage_encrypted" {
#  type        = bool
#  description = "Enables storage encryption"
#  default = false
#}

#variable "multi_az" {
#  description = "Deploy multi-az instance database"
#  type        = bool
#  default     = false
#}

#variable "deletion_protection" {
#  description = "The database can't be deleted when this value is set to true."
#  type        = bool
#  default     = false
#}

#variable "auto_minor_version_upgrade" {
#  type        = bool
#  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
#  default     = true
#}
#
#variable "maintenance_window" {
#  type        = string
#  description = "(RDS Only) The window to perform maintenance in. Syntax: 'ddd:hh24:mi-ddd:hh24:mi'. Eg: 'Mon:00:00-Mon:03:00'"
#  default     = "Sun:04:00-Sun:05:00"
#}

#variable "backup_window" {
#  description = "(RDS Only) The daily time range (in UTC) during which automated backups are created if they are enabled. Example: '09:46-10:16'. Must not overlap with maintenance_window"
#  type        = string
#  default     = "03:00-03:30"
#}
#
variable "security_groups" {
    type = list(string)
    default = null
  
}