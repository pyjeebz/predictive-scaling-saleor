variable "aws_region" {
  description = "A region where all the resources are deployed"
  type = string
  default = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnets CIDRs"
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

variable "private_subnets" {
    description = "List of private subnets CIDRs"
    type = list(string)
    default = [ "10.0.3.0/24", "10.0.4.0/24" ]  
}

variable "azs" {
  description = "Availability Zones"
  type = list(string)
  default = [ "us-east-1a", "us-east-1b" ]
}