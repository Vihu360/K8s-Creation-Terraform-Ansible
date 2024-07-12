terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
		tls = {
      source = "hashicorp/tls"
      version = "4.0.5"
    }
		ansible = {
      source = "ansible/ansible"
      version = "1.1.0"
    }
  }
}
