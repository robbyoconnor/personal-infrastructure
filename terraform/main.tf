terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "cloudflare" {
  api_token          = var.cf_api_token
  api_client_logging = true
  min_backoff        = 5
  max_backoff        = 10
}
