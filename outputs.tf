output "vpc_id" {
  description = "The VPC Id"
  value = module.vpc.vpc_id
}

output "public_subnets" {
  description = "The Id of the public subnets"
  value = module.vpc.public_subnets
}

output "private_subnets" {
  description = "The Id of the private subnets"
  value = module.vpc.private_subnets
}