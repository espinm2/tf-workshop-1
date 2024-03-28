terraform {
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

provider "docker" {
  host = "unix:///var/run/docker.sock"
}
