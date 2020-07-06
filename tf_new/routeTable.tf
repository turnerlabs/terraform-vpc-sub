# Route Table for Private Subnet 1

resource "aws_route_table" "rt_main" {
  vpc_id = aws_vpc.vpc.id
  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-rt-main"
    },
  )
}

resource "aws_route_table_association" "aws_route_table_association_private_1" {
  subnet_id      = aws_subnet.subnet_private_1.id
  route_table_id = aws_route_table.rt_main.id
}

resource "aws_route_table_association" "aws_route_table_association_private_2" {
  subnet_id      = aws_subnet.subnet_private_2.id
  route_table_id = aws_route_table.rt_main.id
}

resource "aws_route_table_association" "aws_route_table_association_private_3" {
  subnet_id      = aws_subnet.subnet_private_3.id
  route_table_id = aws_route_table.rt_main.id
}

resource "aws_route_table_association" "aws_route_table_association_private_4" {
  subnet_id      = aws_subnet.subnet_private_4.id
  route_table_id = aws_route_table.rt_main.id
}


resource "aws_route" "route_ngw" {
  route_table_id         = aws_route_table.rt_main.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.natgw.id
}

# Route Table for Public Subnets

resource "aws_route_table" "rt_custom" {
  vpc_id = aws_vpc.vpc.id
  tags = merge(
    var.tags,
    {
      Name = "${var.vpc_name}-rt-custom"
    },
  )
}

resource "aws_route_table_association" "aws_route_table_association_public_1" {
  subnet_id      = aws_subnet.subnet_public_1.id
  route_table_id = aws_route_table.rt_custom.id
}

resource "aws_route_table_association" "aws_route_table_association_public_2" {
  subnet_id      = aws_subnet.subnet_public_2.id
  route_table_id = aws_route_table.rt_custom.id
}

resource "aws_route_table_association" "aws_route_table_association_public_3" {
  subnet_id      = aws_subnet.subnet_public_3.id
  route_table_id = aws_route_table.rt_custom.id
}

resource "aws_route_table_association" "aws_route_table_association_public_4" {
  subnet_id      = aws_subnet.subnet_public_4.id
  route_table_id = aws_route_table.rt_custom.id
}

resource "aws_route" "route_igw" {
  route_table_id         = aws_route_table.rt_custom.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}
