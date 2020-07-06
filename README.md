# terraform-vpc-sub

This spins up the following:

*** Only 1 NAT Gateway for 4 private subnets(need to work out issue with route tables)

![AWS](arch/tf_new_vpc.jpg)

VPC

4 public subnets

4 private subnets

1 Internat Gateway used by public subnets

1 NAT Gateway used by private subnets

Route tables to make all this work

1 EIP for NAT Gateway
