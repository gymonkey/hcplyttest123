terraform {
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "2.26.0"
    }
  }
}

provider "vultr" {
  api_key     = "FD4YVY5LQPKT5ZG22WTE6A5WVNFHWCGPTSIQ"
  rate_limit  = 100
  retry_limit = 3
}

resource "vultr_instance" "my_instance" {
  plan   = "vc2-1c-2gb"
  region = "sea"
  os_id  = 1743
}

