variable "access_key" {
  description = "AWS access key"
  sensitive = true
}

variable "secret_key" {
  description = "AWS secret access key"
  sensitive = true
}

variable "region" {
  description = "AWS region"
  default     = "ap-south-1"
}

# variable "az" {
#   description = "AWS availability_zone"
#   default     = "ao-south-1"
# }

variable "vpc_cidr" {
  description = "CIDR for VPC"
  default     = "10.0.0.0/16"
}
