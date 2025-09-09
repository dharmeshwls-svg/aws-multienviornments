
regions_config = {
  "us-east-1" = {
    vpc_cidr = "10.0.0.0/16"
    public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
    private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  }
  "us-west-2" = {
    vpc_cidr = "10.12.0.0/16"
    public_subnets = ["10.12.1.0/24", "10.12.2.0/24"]
    private_subnets = ["10.12.3.0/24", "10.12.4.0/24"]
  }
}