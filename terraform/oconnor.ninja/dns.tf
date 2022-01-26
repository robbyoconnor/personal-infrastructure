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

module "email" {
  source     = "git@github.com:jlison/terraform-cloudflare-gsuite-mx.git"
  zone_id    = var.cf_zone_id
  sub_domain = "@"
  ttl        = 300
  dkim       = var.dkim
  dmarc      = var.dmarc
}
