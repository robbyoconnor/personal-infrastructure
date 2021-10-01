resource "cloudflare_record" "terraform_managed_resource_1941d104c37285b9e1c1fc397eed793c" {
  name    = "robby"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "ghs.google.com"
  zone_id = "945e79cc4e8857f3680b17c46e908d46"
}

resource "cloudflare_record" "terraform_managed_resource_8a557126a3df1e4f48611e07789afe0a" {
  name    = "tom"
  proxied = false
  ttl     = 1
  type    = "CNAME"
  value   = "tomoconnor.eu"
  zone_id = "945e79cc4e8857f3680b17c46e908d46"
}

resource "cloudflare_record" "terraform_managed_resource_200b569ce838d0a0e8faa0fe56009db3" {
  name     = "oconnor.ninja"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "aspmx2.googlemail.com"
  zone_id  = "945e79cc4e8857f3680b17c46e908d46"
}

resource "cloudflare_record" "terraform_managed_resource_38ff8351c221956fcd1fe5a34f9a1238" {
  name     = "oconnor.ninja"
  priority = 1
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "aspmx.l.google.com"
  zone_id  = "945e79cc4e8857f3680b17c46e908d46"
}

resource "cloudflare_record" "terraform_managed_resource_517a5075cce4629b1c8b2348730d9b35" {
  name     = "oconnor.ninja"
  priority = 10
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "aspmx3.googlemail.com"
  zone_id  = "945e79cc4e8857f3680b17c46e908d46"
}

resource "cloudflare_record" "terraform_managed_resource_fab14b3cd990d61fd76dba41e0f8d710" {
  name     = "oconnor.ninja"
  priority = 5
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "alt1.aspmx.l.google.com"
  zone_id  = "945e79cc4e8857f3680b17c46e908d46"
}

resource "cloudflare_record" "terraform_managed_resource_1a22591f66b79b722ebf555f4c0aa23b" {
  name     = "oconnor.ninja"
  priority = 5
  proxied  = false
  ttl      = 1
  type     = "MX"
  value    = "alt2.aspmx.l.google.com"
  zone_id  = "945e79cc4e8857f3680b17c46e908d46"
}

resource "cloudflare_record" "terraform_managed_resource_2f10d89981b22bc97db141c008cb0234" {
  name    = "_gitlab-pages-verification-code"
  proxied = false
  ttl     = 300
  type    = "TXT"
  value   = "_gitlab-pages-verification-code=a7b869031003da5b397e71f323097cdc"
  zone_id = "945e79cc4e8857f3680b17c46e908d46"
}

resource "cloudflare_record" "terraform_managed_resource_2cbffed83239c07d0fbf5c0d01186a23" {
  name    = "oconnor.ninja"
  proxied = false
  ttl     = 300
  type    = "TXT"
  value   = "gitlab-pages-verification-code=e7bf3465da74477a92874cbcce1ffd72"
  zone_id = "945e79cc4e8857f3680b17c46e908d46"
}

resource "cloudflare_record" "terraform_managed_resource_0f4b81265202e7cbbf2322f493fa04e9" {
  name    = "oconnor.ninja"
  proxied = false
  ttl     = 1
  type    = "TXT"
  value   = "keybase-site-verification=SSKO1mKlSF1WQ_dpKTRAyHaMKz6cArCVYfAH4f8cjSc"
  zone_id = "945e79cc4e8857f3680b17c46e908d46"
}
