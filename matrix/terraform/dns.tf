resource "cloudflare_record" "matrix_a" {
  zone_id = var.cf_zone
  name    = "matrix"
  type    = "A"
  value   = digitalocean_droplet.matrix-do.ipv4_address
  ttl     = 300
}

resource "cloudflare_record" "matrix_aaaa" {
  zone_id = var.cf_zone
  name    = "matrix"
  type    = "AAAA"
  value   = digitalocean_droplet.matrix-do.ipv6_address
  ttl     = 300
  proxied = false
}


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

  zone_id = var.cf_zone
  name    = "www"
  type    = "CNAME"
  value   = "robbyoconnor.github.io"
  ttl     = 300
  proxied = false
}

resource "cloudflare_record" "matrix_cnames" {
  zone_id  = var.cf_zone
  for_each = var.matrix_cnames
  name     = each.value
  type     = "CNAME"
  value    = "matrix.oconnor.ninja"
  ttl      = 300
  proxied  = "false"
}

resource "cloudflare_record" "_matrix_identity" {
  zone_id = var.cf_zone
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
