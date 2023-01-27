variable "aws_region" {
  description = "Region donde se crearan los recursos"
  type        = string
  default     = "us-east-2"
}

variable "environment" {
  description = "Variable usado como prefijo"
  type        = string
  default     = "dev"
}

variable "department" {
  description = "Area Infraestructura"
  type        = string
  default     = "Infraestructura"
}

variable "ssh_private_key" {
  description = "SSH private Key"
  type = string
  default = "fmora_prod_key_ohio"
}           
