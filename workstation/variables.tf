variable "aws_access_key" {
    description = "AWS Access Key ID for configuring the workstation"
    type = string 
    sensitive   = true
}

variable "aws_secret_access_key" {
    description = "AWS Secret Access Key for configuring the workstation"
    type = string 
    sensitive   = true
}

variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}

