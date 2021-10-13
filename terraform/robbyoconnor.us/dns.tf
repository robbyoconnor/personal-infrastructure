resource "cloudflare_record" "apex_a_records" {
  zone_id  = var.cf_zone
  name     = "@"
  type     = "A"
  for_each = var.gh_pages_ipv4
  value    = each.value
  ttl      = 300
  proxied  = false

}

resource "cloudflare_record" "apex_aaaa" {
  zone_id  = var.cf_zone
  name     = "@"
  type     = "AAAA"
  for_each = var.gh_pages_ipv6
  value    = each.value
  ttl      = 300
  proxied  = false

}

resource "cloudflare_record" "www_cname" {
  name    = "www"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "robbyoconnor.github.io"
  zone_id = var.cf_zone
}

resource "cloudflare_record" "cunycodesdockerdocker17" {
  name    = "cunycodesdocker17"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "robbyoconnor.github.io"
  zone_id = var.cf_zone
}

resource "cloudflare_record" "talks" {
  name    = "talks"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "robbyoconnor.github.io"
  zone_id = var.cf_zone
}

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
