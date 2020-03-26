# NAT Gateways

resource "aws_eip" "nat_eip_1" {
  vpc         = true
}

resource "aws_nat_gateway" "natgw_1" {
  allocation_id = aws_eip.nat_eip_1.id
  subnet_id     = aws_subnet.subnet_public_1.id

  tags = var.tags
}