# Private Subnets

resource "aws_subnet" "subnet_private_1" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.1.0/24"
  availability_zone               = var.availability_zone_1
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = false
  
  tags = {
    Name = "${var.vpc_name}-private-1"
    application = var.tags.application
    customer = var.tags.customer
    contact-email = var.tags.contact-email
    environment = var.tags.environment
    team = var.tags.team
  }
}

resource "aws_subnet" "subnet_private_2" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.2.0/24"
  availability_zone               = var.availability_zone_2
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = false

  tags = {
    Name = "${var.vpc_name}-private-2"
    application = var.tags.application
    customer = var.tags.customer
    contact-email = var.tags.contact-email
    environment = var.tags.environment
    team = var.tags.team
  }
}

# Public Subnets

resource "aws_subnet" "subnet_public_1" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.3.0/24"
  availability_zone               = var.availability_zone_1
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = false

  tags = {
    Name = "${var.vpc_name}-public-1"
    application = var.tags.application
    customer = var.tags.customer
    contact-email = var.tags.contact-email
    environment = var.tags.environment
    team = var.tags.team
  }
}

resource "aws_subnet" "subnet_public_2" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.4.0/24"
  availability_zone               = var.availability_zone_2
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = false

  tags = {
    Name = "${var.vpc_name}-public-2"
    application = var.tags.application
    customer = var.tags.customer
    contact-email = var.tags.contact-email
    environment = var.tags.environment
    team = var.tags.team
  }
}