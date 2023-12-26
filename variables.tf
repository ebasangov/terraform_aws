# Terraform Variables

# Local Values
locals {
  profile = "default"
  vpc_name                 = "erb-vpc"
  internet_gateway_name    = "erb-internet-gateway"
  public_subnet_name       = "erb-public-subnet"
  private_subnet_name      = "erb-private-subnet"
  private_db_subnet_name   = "erb-private-db-subnet"
  public_route_table_name  = "erb-public-route-table"
  private_route_table_name = "erb-private-route-table"
}

# VPC Variables

variable "vpc_cidr" {
  description = "VPC cidr block"
  type        = string
  default     = "172.16.0.0/16"
}

variable "az_names" {
  type    = list(string)
  default = ["us-east-2a", "us-east-2b"]
}

variable "public_subnet_cidr" {
  description = "Public Subnet cidr block"
  type        = list(string)
  default     = ["172.16.0.0/24", "172.16.1.0/24" ]
}

variable "private_subnet_cidr" {
  description = "Private Subnet cidr block"
  type        = list(string)
  default     = ["172.16.10.0/24", "172.16.11.0/24"]
}

variable "private_db_subnet_cidr" {
  description = "Private Subnet cidr block for DB"
  type        = list(string)
  default     = ["172.16.12.0/24", "172.16.13.0/24"]
}