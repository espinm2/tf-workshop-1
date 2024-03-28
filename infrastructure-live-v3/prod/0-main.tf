terraform {
  backend "local" {
    path = "prod/terraform.tfstate"
  }

  // NOTE version before OpenTofu
  required_version = "~> 1.5.0"
}

module "httpbin" {
  source      = "../../infrastructure-modules/httpbin"
  environment = "prod"
  port        = 8082
}
