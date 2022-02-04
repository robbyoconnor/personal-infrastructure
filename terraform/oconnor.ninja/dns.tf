resource "cloudflare_record" "blogspot_cname" {
  name    = "robby"
  proxied = false
  ttl     = 300
  type    = "CNAME"
  value   = "ghs.google.com"
  zone_id = var.cf_zone_id
}

resource "cloudflare_record" "tom_cname" {
  name    = "tom"
  proxied = false
  ttl     = 300
  type    = "CNAME"
  value   = "tomoconnor.eu"
  zone_id = var.cf_zone_id
}

resource "cloudflare_record" "keybase_proof" {
  name    = "oconnor.ninja"
  proxied = false
  ttl     = 300
  type    = "TXT"
  value   = "keybase-site-verification=SSKO1mKlSF1WQ_dpKTRAyHaMKz6cArCVYfAH4f8cjSc"
  zone_id = var.cf_zone_id
}

resource "cloudflare_record" "github_pages_proof" {
  name    = "_github-pages-challenge-robbyoconnor"
  proxied = false
  ttl     = 300
  type    = "TXT"
  value   = "2d4e1b2e545ebd1fc71edd94eb237f"
  zone_id = var.cf_zone_id
}

module "email" {
  source       = "robbyoconnor/fastmail-mx/cloudflare"
  version      = "1.0.0"
  cf_zone_id   = var.cf_zone_id
  cf_api_token = var.cf_api_token
  sub_domain   = "@"
  domain_name  = "oconnor.ninja"
  ttl          = 300
  dmarc        = var.dmarc
}
