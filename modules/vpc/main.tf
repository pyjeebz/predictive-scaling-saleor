resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "saleor-vpc"
    }
}


#Create the Internet gateways for public subnets

resource "aws_internet_gateway" "this" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "saleor-igw"
  }
}

#Creating public subnets

resource "aws_subnet" "public" {
  for_each = toset(var.public_subnets)

  vpc_id = aws_vpc.this.id
  cidr_block = each.value
  availability_zone =  element(var.azs, index(var.public_subnets, each.value))
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnets-${each.value}"
  }
}

#Creating private subnets
resource "aws_subnet" "private" {
  for_each = toset(var.private_subnets)

  vpc_id = aws_vpc.this.id
  cidr_block = each.key
  availability_zone = element(var.azs, index(var.private_subnets, each.value))

  tags = {
    Name = "private-subnets-${each.value}"
  }
}