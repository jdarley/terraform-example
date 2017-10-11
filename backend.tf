terraform {
  backend "s3" {
    bucket  = "whippetlabs-terraform-state"
    key     = "global/s3/terraform.tfstate"
    region  = "eu-west-1"
    encrypt = true
    profile = "personal"
  }
}
