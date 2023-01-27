
output "vpc_id" {
  description = "Id VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "CIDR block de la VPC"
  value       = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "Lista de IDs de private subnets"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List de IDs de public subnets"
  value       = module.vpc.public_subnets
}

output "nat_public_ips" {
  description = "List de IPs Elasticas para AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

output "azs" {
  description = "Lista de AZs"
  value       = module.vpc.azs
}
