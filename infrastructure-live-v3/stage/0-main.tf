terraform {
  backend "local" {
    path = "stage/terraform.tfstate"
  }

  // NOTE version before OpenTofu
  required_version = "~> 1.5.0"
}

module "httpbin" {
  source      = "../../infrastructure-modules/httpbin"
  environment = "stage"
  port        = 8081
}

