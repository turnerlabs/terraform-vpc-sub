# Route Table for Private Subnet 1

resource "aws_route_table" "rt_main_1" {
  vpc_id      = aws_vpc.vpc.id

  tags = var.tags
}

resource "aws_route_table_association" "aws_route_table_association_private_1" {
  subnet_id       = aws_subnet.subnet_private_1.id
  route_table_id  = aws_route_table.rt_main_1.id
}

resource "aws_route" "route_ngw_1" { 
  route_table_id          = aws_route_table.rt_main_1.id
  destination_cidr_block  = "0.0.0.0/0"
  nat_gateway_id          = aws_nat_gateway.natgw_1.id
}

# Route Table for Private Subnet 2

resource "aws_route_table" "rt_main_2" {
  vpc_id      = aws_vpc.vpc.id

  tags = var.tags
}

resource "aws_route_table_association" "aws_route_table_association_private_2" {
  subnet_id       = aws_subnet.subnet_private_2.id
  route_table_id  = aws_route_table.rt_main_2.id
}

resource "aws_route" "route_ngw_2" { 
  route_table_id          = aws_route_table.rt_main_2.id
  destination_cidr_block  = "0.0.0.0/0"
  nat_gateway_id          = aws_nat_gateway.natgw_2.id
}

# Route Table for Public Subnets

resource "aws_route_table" "rt_custom" {
  vpc_id      = aws_vpc.vpc.id
  
  tags = var.tags
}

resource "aws_route_table_association" "aws_route_table_association_public_1" {
  subnet_id       = aws_subnet.subnet_public_1.id
  route_table_id  = aws_route_table.rt_custom.id
}

resource "aws_route_table_association" "aws_route_table_association_public_2" {
  subnet_id       = aws_subnet.subnet_public_2.id
  route_table_id  = aws_route_table.rt_custom.id
}

resource "aws_route" "route_igw" { 
  route_table_id          = aws_route_table.rt_custom.id
  destination_cidr_block  = "0.0.0.0/0"
  gateway_id              = aws_internet_gateway.igw.id
}
