
variable "vpc_cidr_block" {
  description = "CIDR Block"
  type        = string
  default     = "192.169.0.0/16"
}

variable "vpc_public_subnets" {
  description = "Public Subnets"
  type        = list(string)
  default     = ["192.169.100.0/24", "192.169.101.0/24"]
}