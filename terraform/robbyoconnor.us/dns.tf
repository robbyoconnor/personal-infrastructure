resource "cloudflare_record" "terraform_managed_resource_c8113d38ec1e15f93bb333aefa7825ce" {
  name    = "robbyoconnor.us"
  proxied = false
  ttl     = 1
  type    = "A"
  value   = "185.199.111.153"
  zone_id = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_05158f4cf238fac58e5b46e812c92738" {
  name    = "robbyoconnor.us"
  proxied = false
  ttl     = 1
  type    = "A"
  value   = "185.199.110.153"
  zone_id = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_7df866cb5e4b5444724521994866d570" {
  name    = "robbyoconnor.us"
  proxied = false
  ttl     = 1
  type    = "A"
  value   = "185.199.109.153"
  zone_id = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_d7f367583a7cfa0ac4277d7b65e9da16" {
  name    = "robbyoconnor.us"
  proxied = false
  ttl     = 1
  type    = "A"
  value   = "185.199.108.153"
  zone_id = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "www_cname" {
  name    = "www"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "185.199.108.153"
  zone_id = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_fc12069f8c735315a81a1732fb055a3e" {
  name    = "cunycodesdocker17"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "robbyoconnor.github.io"
  zone_id = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_521793ee86fec8a45f7546a9cd4bccf1" {
  name    = "talks"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "robbyoconnor.github.io"
  zone_id = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_c69b2547063dade43903ea331e244f01" {
  name     = "robbyoconnor.us"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "aspmx3.googlemail.com"
  zone_id  = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_6e4246908f5245429d1f867bad44089c" {
  name     = "robbyoconnor.us"
  priority = 1
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "aspmx.l.google.com"
  zone_id  = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_7eb7dc5b3b2f5db18749da20b557dc47" {
  name     = "robbyoconnor.us"
  priority = 5
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "alt1.aspmx.l.google.com"
  zone_id  = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_1fcec4a6c136dbf12fa660797b433e63" {
  name     = "robbyoconnor.us"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "aspmx2.googlemail.com"
  zone_id  = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_817d62fdc7e47d3816a0572063bebd48" {
  name     = "robbyoconnor.us"
  priority = 5
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "alt2.aspmx.l.google.com"
  zone_id  = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}

resource "cloudflare_record" "terraform_managed_resource_f904f2ace3bde43e1691dfb6573b69fe" {
  name    = "robbyoconnor.us"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "keybase-site-verification=zPZHWDe-j4GpYedHRv5we7IlHuclkwYDNaN8ykEJrbo"
  zone_id = "2958bbb87c4fdadf9ff97d1c29b5dba2"
}
