terraform {
  backend "s3" {
    bucket = "dnyaneshwar-terraform-infra-state-2022"
    key    = "network/ec2launchlemplate/terraform.tfstate"
    region = "us-east-2"
  }
}
