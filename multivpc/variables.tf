
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = ""

}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = ["us-east-1"]
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
  default     = [""]
}
variable "regions_config" {
  description = "Map of region-specific VPC and subnet settings"
  type = map(object({
    vpc_cidr        = string
    public_subnets  = list(string)
    private_subnets = list(string)

  }))

}

variable "regions" {
  description = "The AWS region to create resources in"
  type        = string
  default     = ""

  validation {
    condition     = contains(["us-east-1", "us-west-2"], var.regions)
    error_message = "❌ Invalid region! Allowed values: us-east-1, us-west-2"
  }
}
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = ""

}
variable "public_subnet_ids" {
  description = "List of public subnet IDs"
  type        = list(string)
  default     = []

}
variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
  default     = []

}