variable "region" {
  description = "Region"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "Profile from credentials"
  default     = "default"
}

variable "tags" {
  type = map(string)
}

variable "vpc_name" {
  description = "the name of the vpc"
}

variable "availability_zone_1" {
  description = "az 1 of 4 azs"
  default     = "us-east-1a"
}

variable "availability_zone_2" {
  description = "az 2 of 4 azs"
  default     = "us-east-1b"
}

variable "availability_zone_3" {
  description = "az 3 of 4 azs"
  default     = "us-east-1c"
}

variable "availability_zone_4" {
  description = "az 4 of 4 azs"
  default     = "us-east-1d"
}

