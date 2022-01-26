resource "cloudflare_record" "matrix_a" {
  zone_id = var.cf_zone_id
  name    = "matrix"
  type    = "A"
  value   = digitalocean_droplet.matrix-do.ipv4_address
  ttl     = 300
}

resource "cloudflare_record" "matrix_aaaa" {
  zone_id = var.cf_zone_id
  name    = "matrix"
  type    = "AAAA"
  value   = digitalocean_droplet.matrix-do.ipv6_address
  ttl     = 300
  proxied = false
}

resource "cloudflare_record" "matrix_cnames" {
  zone_id  = var.cf_zone_id
  for_each = var.matrix_cnames
  name     = each.value
  type     = "CNAME"
  value    = "matrix.oconnor.ninja"
  ttl      = 300
  proxied  = "false"
}

resource "cloudflare_record" "_matrix_identity" {
  zone_id = var.cf_zone_id
  name    = "_matrix_identity._tcp"
  type    = "SRV"
  ttl     = 300
  proxied = "false"
  data {

    service  = "_matrix_identity"
    proto    = "_tcp"
    name     = "matrix_identity_srv"
    priority = 10
    weight   = 0
    port     = 443
    target   = "matrix.oconnor.ninja"
  }
}


module "oconnor_ninja" {
  source          = "robbyoconnor/github-pages-dns/cloudflare"
  version         = "1.0.0"
  gh_username     = "robbyoconnor"
  gh_pages_cnames = ["www"]
  cf_zone_id      = var.cf_zone_id
  cf_api_token    = var.cf_api_token
}
