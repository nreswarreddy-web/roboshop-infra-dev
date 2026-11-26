module "vpc" {
  source = "git::https://github.com/nreswarreddy-web/terraform-aws-vpc.git?ref=main"

  project     = var.project
  environment = var.environment
}