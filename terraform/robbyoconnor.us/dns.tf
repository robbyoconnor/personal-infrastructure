resource "cloudflare_record" "keybase_proof" {
  name    = "robbyoconnor.us"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "keybase-site-verification=zPZHWDe-j4GpYedHRv5we7IlHuclkwYDNaN8ykEJrbo"
  zone_id = var.cf_zone
}

module "email" {
  source     = "git@github.com:jlison/terraform-cloudflare-gsuite-mx.git"
  zone_id    = var.cf_zone
  sub_domain = "@"
  ttl        = 300
  dkim       = var.dkim
  dmarc      = var.dmarc
}

module "robbyoconnor_us_github_pages" {
  source          = "robbyoconnor/github-pages-dns/cloudflare"
  version         = "1.0.0"
  gh_username     = "robbyoconnor"
  gh_pages_cnames = ["cunycodesdocker17", "talks", "www"]
  cf_zone_id      = var.cf_zone
  cf_api_token    = var.cf_api_token
}
