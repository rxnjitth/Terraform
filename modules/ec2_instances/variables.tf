variable "ami" {
    description = "The AMI ID to use for the instance"
    type        = string
}

variable "instance_type" {
    description = "The instance type to use for the instance. eg: t2.micro"
    type        = string
}