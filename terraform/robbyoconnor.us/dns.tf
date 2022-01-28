resource "cloudflare_record" "keybase_proof" {
  name    = "robbyoconnor.us"
  proxied = false
  ttl     = 300
  type    = "TXT"
  value   = "keybase-site-verification=zPZHWDe-j4GpYedHRv5we7IlHuclkwYDNaN8ykEJrbo"
  zone_id = var.cf_zone_id
}

module "email" {
  source       = "robbyoconnor/fastmail-mx/cloudflare"
  version      = "1.0.0"
  cf_zone_id   = var.cf_zone_id
  cf_api_token = var.cf_api_token
  sub_domain   = "@"
  domain_name  = "robbyoconnor.us"
  ttl          = 300
  dmarc        = var.dmarc
}

module "robbyoconnor_us_github_pages" {
  source          = "robbyoconnor/github-pages-dns/cloudflare"
  version         = "1.0.0"
  gh_username     = "robbyoconnor"
  gh_pages_cnames = ["cunycodesdocker17", "talks", "www"]
  cf_zone_id      = var.cf_zone_id
  cf_api_token    = var.cf_api_token
}
