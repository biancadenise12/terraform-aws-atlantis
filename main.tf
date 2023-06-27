provider "aws" {
    region = "ap-southeast-1"
    profile = "personal"
}

module "atlantis" {
  source  = "terraform-aws-modules/atlantis/aws"
  version = "3.28.0"
  atlantis_repo_allowlist = ["test-terragrunt-atlantis"]
}