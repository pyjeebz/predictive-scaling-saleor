output "instance_id" {
  description = "ID of the ec2 instance"
  value = aws_instance.this.id
}

output "public_subnets" {
  description = "Public IP of the ec2 instance"
  value = aws_instance.this.public_ip
}

output "private_subnets" {
  description = "Private IP of the ec2 instance"
  value = aws_instance.this.private_ip
}