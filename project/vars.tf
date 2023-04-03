variable "delimiter" {
  description = "A delimiter to use when joining namespaces"
  default     = "-"
}

variable "project" {
  description = "Project name"
}

variable "client" {
  description = "Client name"
}

variable "env" {
  description = "Environment name"
}

variable "extra_tags" {
  description = "Extra tags that should be set on all resources"
  type        = map(string)
  default     = {}
}

variable "domain" {
  description = "Domain name"
  default     = ""
}
