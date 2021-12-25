output "vpc" {
  value       = module.vpc.vpc_id
  description = "The ID of the VPC"
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "List of IDs of public subnets"
}

output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "List of IDs of private subnets"
}

