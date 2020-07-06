# Private Subnets

resource "aws_subnet" "subnet_private_1" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.1.0/24"
  availability_zone               = var.availability_zone_1
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = false
  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-private"
    },
  )
}

resource "aws_subnet" "subnet_private_2" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.2.0/24"
  availability_zone               = var.availability_zone_2
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = false
  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-private"
    },
  )
}

resource "aws_subnet" "subnet_private_3" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.3.0/24"
  availability_zone               = var.availability_zone_3
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = false
  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-private"
    },
  )
}

resource "aws_subnet" "subnet_private_4" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.4.0/24"
  availability_zone               = var.availability_zone_4
  map_public_ip_on_launch         = false
  assign_ipv6_address_on_creation = false
  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-private"
    },
  )
}


# Public Subnets

resource "aws_subnet" "subnet_public_1" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.5.0/24"
  availability_zone               = var.availability_zone_1
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = false
  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-public"
    },
  )
}

resource "aws_subnet" "subnet_public_2" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.6.0/24"
  availability_zone               = var.availability_zone_2
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = false
  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-public"
    },
  )
}

resource "aws_subnet" "subnet_public_3" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.7.0/24"
  availability_zone               = var.availability_zone_3
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = false
  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-public"
    },
  )
}

resource "aws_subnet" "subnet_public_4" {
  vpc_id                          = aws_vpc.vpc.id
  cidr_block                      = "172.16.8.0/24"
  availability_zone               = var.availability_zone_4
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = false
  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-public"
    },
  )
}
