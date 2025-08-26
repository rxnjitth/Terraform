provider "aws" {
    region = "ap-southeast-1"
  }

variable "ami" {
    description = "The AMI to use for the instance"
    
  }
variable "instance_type" {
    description = "The type of instance to create"
    type        = map(string)

    default = {
      "dev" = "t2.micro"
      "stage" = "t2.medium"
      "prod" = "t2.large"
      
    }
  }


module "ec2_instance" {
   source        = "./modules/ec2_instances"
   ami           = var.ami
   instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
 }

