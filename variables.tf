variable "instancetype" {
  description = "instance type to be launched"
  type        = string
  default     = "t2.micro"
}

variable "keyname" {
  description = "key name used to login to EC2 Instance"
  type        = string
  default     = "Esat-2"
}

variable "region" {
  description = "region to create resources"
  type = string
  default = "us-east-2"
}

variable "profile" {
  description = "profile to be used to create resources."
  type        = string
  default     = "Terraform"
}
