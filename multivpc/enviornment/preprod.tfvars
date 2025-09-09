
# vpc_cidr        = "10.3.0.0/16"
# public_subnets  = ["10.3.1.0/24", "10.3.2.0/24"]
# private_subnets = ["10.3.3.0/24", "10.3.4.0/24"]

regions_config = {
  "us-east-1" = {
    vpc_cidr        = "10.1.0.0/16"
    public_subnets  = ["10.1.1.0/24", "10.1.2.0/24"]
    private_subnets = ["10.1.3.0/24", "10.1.4.0/24"]
  }
  "us-west-2" = {
    vpc_cidr        = "10.11.0.0/16"
    public_subnets  = ["10.11.1.0/24", "10.11.2.0/24"]
    private_subnets = ["10.11.3.0/24", "10.1.4.0/24"]
  }
}