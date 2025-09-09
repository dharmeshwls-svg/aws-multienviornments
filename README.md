
# AWS Multi-Environment, Multi-Region VPC Terraform Project

This project provisions AWS VPC infrastructure for multiple environments (dev, preprod, prod) and supports multi-region deployments using Terraform modules and variables.

---

## Features

- **Modular VPC creation** using a reusable `vpc` module
- **Multi-region support**: Deploy to any number of AWS regions by updating a single variable
- **Multi-environment support**: Use different `.tfvars` files for dev, preprod, and prod
- **Dynamic subnets, route tables, and gateways**
- **Outputs** for VPC and subnet IDs for integration with other modules

---

## Project Structure

```
aws-multienviornments/
├── README.md
└── multivpc/
	 ├── main.tf
	 ├── outputs.tf
	 ├── providers.tf
	 ├── variables.tf
	 ├── enviornment/
	 │   ├── dev.tfvars
	 │   ├── preprod.tfvars
	 │   └── prod.tfvars
	 └── vpc/
		  ├── main.tf
		  ├── outputs.tf
		  ├── variables.tf
		  └── data.tf
```

---

## How It Works

1. **Region and Environment Configuration**
	- Each environment (`dev`, `preprod`, `prod`) has its own `.tfvars` file under `multivpc/enviornment/`.
	- Each `.tfvars` file defines a `regions_config` map, specifying VPC and subnet CIDRs for each region.
	- The active region is selected via the `regions` variable.

2. **Module Usage**
	- The root `main.tf` uses a `for_each` loop to instantiate the `vpc` module for each region in `regions_config`.
	- The `vpc` module provisions the VPC, subnets, route tables, and gateway for each region.

3. **Outputs**
	- Outputs are dynamically selected for the active region using `module.vpc[var.regions].vpc_id`, etc.

---

## Usage

1. **Initialize Terraform**
	```bash
	cd multivpc
	terraform init
	```

2. **Plan for a specific environment and region**
	```bash
	terraform plan -var-file="enviornment/dev.tfvars" -var="regions=us-east-1"
	```

3. **Apply the configuration**
	```bash
	terraform apply -var-file="enviornment/dev.tfvars" -var="regions=us-east-1"
	```

---

## Variables

- `regions_config`: Map of region-specific VPC and subnet settings (see example in `enviornment/dev.tfvars`)
- `regions`: The AWS region to deploy resources in (e.g., `us-east-1`)
- `vpc_cidr`, `public_subnets`, `private_subnets`: Used by the VPC module

---

## Example `dev.tfvars`

```hcl
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
```

---

## Outputs

- `vpc_id`: The ID of the created VPC for the selected region
- `public_subnet_ids`: List of public subnet IDs for the selected region
- `private_subnet_ids`: List of private subnet IDs for the selected region

---

## Extending

- Add more regions or environments by updating the `regions_config` variable and adding new `.tfvars` files.
- Customize the `vpc` module for additional AWS resources as needed.

---

## Requirements

- Terraform >= 1.3
- AWS CLI configured or environment variables for credentials

---


