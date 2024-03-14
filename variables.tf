variable "databricks_account_username" {
  default = databricks_account_username
}

variable "databricks_account_password" {
  default = databricks_account_password
}

variable "databricks_account_id" {
  default = databricks_account_id
}

variable "tags" {
  default = {}
}

variable "cidr_block" {
  default = "10.4.0.0/16"
}

variable "region" {
  default = aws_region
}

resource "random_string" "naming" {
  special = false
  upper   = false
  length  = 6
}

locals {
  prefix = "batch-use-case"
}