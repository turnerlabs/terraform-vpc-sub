# NAT Gateway

resource "aws_eip" "nat_eip" {
  vpc         = true
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.subnet_public_1.id

  tags = var.tags
}
