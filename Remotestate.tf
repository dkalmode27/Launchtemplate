data "terraform_remote_state" "jenkinsinstancesg" {
  backend = "s3"
  config = {
    bucket = "dnyaneshwar-terraform-infra-state-2022"
    key    = "jenkinserver/securitygroup/terraform.tfstate"
    region = var.region
  }
}

data "terraform_remote_state" "loadbalancersg" {
  backend = "s3"
  config = {
    bucket = "dnyaneshwar-terraform-infra-state-2022"
    key    = "network/loadbalancersg/terraform.tfstate"
    region = var.region
  }
}
