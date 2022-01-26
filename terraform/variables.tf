variable "cf_zone_id" {}
variable "cf_api_token" {}
variable "dkim" {}
variable "dmarc" {}

variable "gh_pages_ipv4" {
  description = "IPv4 records for GitHub pages"
  default     = ["185.199.108.153", "185.199.109.153", "185.199.110.153", "185.199.111.153"]
  type        = set(string)
}

variable "gh_pages_ipv6" {
  description = "IPv4 records for GitHub pages"
  default     = ["2606:50c0:8000::153", "2606:50c0:8001::153", "2606:50c0:8002::153", "2606:50c0:8003::153"]
  type        = set(string)
}
