provider "aws" {
#  version = "~> 2.54"
  profile = "terraform"
}

# provider "digitalocean" {}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
    }
  }
}

# terraform {
#   required_version = "0.12.31"
# }

resource "aws_eip" "kplabs_app_ip" {
  # vpc = true
  domain = vpc
}
