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

locals {
  httpport = 80
  sshport  = 22
}

variable "myipaddress" {
  description = "ip address of system to be used to access EC2 Instance"
  type        = string
  default     = "73.233.146.79/32"
}

variable "vpccidr" {
  description = "cidr of vpc id"
  type = string
  default = "172.31.0.0/16"
}

variable "vpcid" {
  description = "vpc id"
  type        = string
  default     = "vpc-02210af265689e270"
}
