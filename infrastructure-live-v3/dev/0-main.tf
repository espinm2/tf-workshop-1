terraform {
  backend "local" {
    path = "dev/terraform.tfstate"
  }

  // NOTE version before OpenTofu
  required_version = "~> 1.5.0"
}

module "httpbin" {
  source      = "../../infrastructure-modules/httpbin"
  environment = "dev"
  port        = 8080
}
