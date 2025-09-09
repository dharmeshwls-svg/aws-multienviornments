
module "vpc" {
  source   = "./vpc"
  for_each = var.regions_config
  # region = each.key

  vpc_cidr        = each.value.vpc_cidr
  public_subnets  = each.value.public_subnets
  private_subnets = each.value.private_subnets


}

# # Optional fail-fast check
# resource "null_resource" "validate_subnet" {
#   count = var.public_subnets == "" ? 1 : 0

#   triggers = {
#     error = "❌ Invalid subnet! No subnet found for the selected region."
#   }
# }
# validation {
#     condition     = length(var.subnet_id) > 0
#     error_message = "❌ subnet_id must be provided and not empty."
#   }
