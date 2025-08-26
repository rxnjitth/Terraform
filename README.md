# Terraform AWS EC2 Module Project

This Terraform project demonstrates the use of modules to create and manage AWS EC2 instances across different environments (development, staging, and production).

## Project Structure

```
├── main.tf                 # Main Terraform configuration file
├── terraform.tfvars        # Variable definitions for the project
├── modules/
│   └── ec2_instances/     # EC2 instance module
│       ├── main.tf        # Module main configuration
│       └── variables.tf    # Module variable definitions
└── terraform.tfstate.d/   # State files for different environments
    ├── dev/
    ├── prod/
    └── stage/
```

## Features

- Modular design for reusable EC2 instance configurations
- Support for multiple environments (dev, stage, prod)
- Centralized variable management through terraform.tfvars

## Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform installed (version 0.12 or later)
- Basic understanding of AWS EC2 service

## Usage

1. Initialize Terraform:
```bash
terraform init
```

2. Select workspace for your environment:
```bash
terraform workspace select dev    # For development
terraform workspace select stage  # For staging
terraform workspace select prod   # For production
```

3. Review the planned changes:
```bash
terraform plan
```

4. Apply the configuration:
```bash
terraform apply
```

## Module Configuration

The EC2 instance module can be configured through variables in `terraform.tfvars`. Example configuration:

```hcl
instance_type = "t2.micro"
ami_id        = "ami-xxxxx"
```

## State Management

This project uses local state files organized by environment in the `terraform.tfstate.d` directory. Each environment (dev, stage, prod) maintains its own state file.

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Maintainer

[rxnjitth](https://github.com/rxnjitth)
