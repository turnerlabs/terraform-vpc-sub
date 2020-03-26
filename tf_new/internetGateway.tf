# Internet Gateway

resource "aws_internet_gateway" "igw" {
  vpc_id      = aws_vpc.vpc.id

  tags = {
    Name = "${var.vpc_name}-igw"
    application = var.tags.application
    customer = var.tags.customer
    contact-email = var.tags.contact-email
    environment = var.tags.environment
    team = var.tags.team
  }
}