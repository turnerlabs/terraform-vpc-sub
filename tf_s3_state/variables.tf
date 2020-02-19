variable "region" {
  description = "Region"
  default     = "us-east-1"
}

variable "profile" {
  description = "Profile from credentials"
  default     = "default"
}

variable "tags" {
  type = map(string)
}

variable "bucket_name" {}

variable "versioning" {
  default = false
}
