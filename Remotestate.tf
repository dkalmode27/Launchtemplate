data "terraform_remote_state" "instancesg" {
  backend = "s3"
  config = {
    bucket = "dnyaneshwar-terraform-infra-state-2022"
    key    = "network/instancesg/terraform.tfstate"
    region = var.region
  }
}