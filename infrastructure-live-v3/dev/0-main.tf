provider "docker" {
  host = "unix:///var/run/docker.sock"
}

provider "random" {}

terraform {
  backend "local" {
    path = "dev/terraform.tfstate"
  }

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.0"
    }
  }
  // NOTE version before OpenTofu
  required_version = "~> 1.5.0"
}

module "httpbin" {
  source      = "../../infrastructure-modules/httpbin"
  environment = "dev"
  port        = 8080
}
