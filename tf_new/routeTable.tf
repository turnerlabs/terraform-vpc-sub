# Main Route Table

resource "aws_route_table" "rt_main" {
  vpc_id      = aws_vpc.vpc.id

  tags = var.tags
}

resource "aws_route_table_association" "aws_route_table_association_private_1" {
  subnet_id       = aws_subnet.subnet_private_1.id
  route_table_id  = aws_route_table.rt_main.id
}

resource "aws_route_table_association" "aws_route_table_association_private_2" {
  subnet_id       = aws_subnet.subnet_private_2.id
  route_table_id  = aws_route_table.rt_main.id
}

resource "aws_route" "route_ngw" { 
  route_table_id          = aws_route_table.rt_main.id
  destination_cidr_block  = "0.0.0.0/0"
  nat_gateway_id          = aws_nat_gateway.natgw.id
}

# Custom Route Table

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
