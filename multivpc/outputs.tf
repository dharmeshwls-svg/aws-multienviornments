# # Example: if your module creates instances, output their IDs
# output "instance_ids" {
#   value       = module.compute.instance_ids
#   description = "List of instance IDs created in the selected region"
# }
# Confirm the subnet used (based on the region)

output "regions" {
  value       = var.regions
  description = "The region selected"
  
}

output "vpc_cidr" {
  value       = var.regions_config[var.regions].vpc_cidr
  description = "The VPC CIDR used in the active region"    
  
}

output "public_subnets" {
  value       = var.regions_config[var.regions].public_subnets[*]
  description = "The public subnet used in the active region"
}
output "private_subnet" {
  value       = var.regions_config[var.regions].private_subnets[*]
  description = "The private subnet used in the active region"  
  
}

# Confirm the VPC ID created (based on the region)
output "vpc_id" {
  value       = module.vpc[var.regions].vpc_id
  description = "The ID of the VPC created in the active region"
}   
# Confirm the public subnet IDs created (based on the region)
output "public_subnet_ids" {
  value       = module.vpc[var.regions].public_subnet_ids
  description = "The IDs of the public subnets created in the active region"
}
# Confirm the private subnet IDs created (based on the region)
output "private_subnet_ids" {
  value       = module.vpc[var.regions].private_subnet_ids
  description = "The IDs of the private subnets created in the active region"
}