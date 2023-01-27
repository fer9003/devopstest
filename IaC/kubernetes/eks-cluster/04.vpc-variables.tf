
variable "vpc_name" {
  description = "Nombre de VPC"
  type        = string
  default     = "eks-vpc"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
  default     = "192.168.0.0/16"
}

variable "vpc_public_subnets" {
  description = "VPC Subnets Publicas"
  type        = list(string)
  default     = ["192.168.101.0/24", "192.168.102.0/24"]
}


variable "vpc_private_subnets" {
  description = "VPC Subnets Privadas"
  type        = list(string)
  default     = ["192.168.1.0/24", "192.168.2.0/24"]
}

variable "vpc_database_subnets" {
  description = "VPC Subnets Database"
  type        = list(string)
  default     = ["192.168.151.0/24", "192.168.152.0/24"]
}

variable "vpc_create_database_subnet_group" {
  description = "VPC Grupo Database Subnet"
  type        = bool
  default     = true
}

variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type        = bool
  default     = true
}


variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type        = bool
  default     = true
}

variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type        = bool
  default     = true
}
