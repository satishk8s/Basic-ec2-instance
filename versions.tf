#versions
terraform {
  required_version = "<= 1.0.0" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 3.0.0" #Forcing which version of plugin needs to be used.
      source = "hashicorp/aws"
    }
  }
}