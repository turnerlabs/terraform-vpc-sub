# NAT Gateways

resource "aws_eip" "nat_eip_1" {
  vpc         = true
}

resource "aws_nat_gateway" "natgw_1" {
  allocation_id = aws_eip.nat_eip_1.id
  subnet_id     = aws_subnet.subnet_public_1.id

  tags = var.tags
}

resource "aws_eip" "nat_eip_2" {
  vpc         = true
}

resource "aws_nat_gateway" "natgw_2" {
  allocation_id = aws_eip.nat_eip_2.id
  subnet_id     = aws_subnet.subnet_public_2.id

  tags = var.tags
}
