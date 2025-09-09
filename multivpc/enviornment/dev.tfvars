
# us-east-1.vpc_cidr = "10.1.0.0/16"
# us-east-1.public_subnets = ["10.1.1.0/24", "10.1.2.0/24"]
# us-east-1.private_subnets = ["10.1.3.0/24", "10.1.4.0/24"]


# us-west-2.vpc_cidr = "10.10.0.0/16"
# us-west-2.public_subnets = ["10.10.1.0/24", "10.10.2.0/24"]
# us-west-2.private_subnets = ["10.10.3.0/24", "10.10.4.0/24"]

# vpc_cidr        = "10.1.0.0/16"
# public_subnets  = ["10.1.1.0/24", "10.1.2.0/24"]
# private_subnets = ["10.1.3.0/24", "10.1.4.0/24"]

regions_config = {
  "us-east-1" = {
    vpc_cidr        = "10.1.0.0/16"
    public_subnets  = ["10.1.1.0/24", "10.1.2.0/24"]
    private_subnets = ["10.1.3.0/24", "10.1.4.0/24"]
  }
  "us-west-2" = {
    vpc_cidr        = "10.1.0.0/16"
    public_subnets  = ["10.1.1.0/24", "10.1.2.0/24"]
    private_subnets = ["10.1.3.0/24", "10.1.4.0/24"]
  }
}