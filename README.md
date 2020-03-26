# terraform-vpc-sub

This spins up the following:

*** Only 1 NAT Gateway for 2 private subnets(need to work out issue with route tables)

![AWS](arch/tf_new_vpc.jpg)

VPC

2 public subnets

2 private subnets

1 Internat Gateway used by public subnets

1 NAT Gateway used by private subnets

Route tables to make all this work

2 EIPs for NAT Gateways
