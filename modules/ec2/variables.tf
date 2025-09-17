variable "ami_id" {
  description = "AMI ID for the instance"
  type = string
}

variable "instance_type" {
  description = "EC2 instance type (e.g t2.micro)"
  type = string
  default = "t2.micro"
}

variable "key_name" {
  description = "Key pair name to use for SSH access"
  type = string
  default = null
}

variable "subnet_id" {
  description = "Subnet ID where the instances will be launched"
  type = string
}

variable "security_group_ids" {
  description = "list of security groups to be attached"
  type = list(string)
  default = []
}

variable "instance_name" {
  description = "Name tags for the instance"
  type = string
}

variable "addtional_tags" {
  description = "Extra tags to apply"
  type = map(string)
  default = {}
}