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

variable "availability_zone_1" {
  description = "az 1 of 2 azs"
  default     = "us-east-1a"
}

variable "availability_zone_2" {
  description = "az 2 of 2 azs"
  default     = "us-east-1b"
}
