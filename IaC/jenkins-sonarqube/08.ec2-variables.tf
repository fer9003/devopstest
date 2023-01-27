variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.small"
}

variable "instance_keypair" {
  description = "SSH keypair that must be created on aws keypair"
  type        = string
  default     = "fmora_prod_key_ohio"
}

variable "instance_type_sonar" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t3.medium"
}

variable "instance_type_jenkins_node" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.small"
}