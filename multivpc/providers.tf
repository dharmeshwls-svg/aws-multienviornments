
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.11.0"
    }
  }
}
provider "aws" {

  region = var.regions
}



# provider "aws" {
#   alias = each.key
#   region = each.value.region
# }

# provider "aws" {

#   region = var.region
#   default = ""
#   }

# }

# variable "region" {
#   description = "The AWS region to create resources in"
#   type        = string
#   default = ""

# }
