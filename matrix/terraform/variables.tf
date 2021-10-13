variable "do_token" {}
variable "pvt_key" {}
variable "pub_key" {}
variable "hosts_template" {
  description = "Template file to generate the hosts file for running the matrix ansible playbook"
  default     = "files/hosts.tmpl"
  type        = string
}
variable "ubuntu" {
  description = "Default LTS"
  default     = "ubuntu-20-04-x64"
}

variable "cf_zone" {}
variable "cf_api_token" {}
variable "matrix_cnames" {
  description = "CNAME records for matrix"
  default     = ["dimension", "stats", "jitsi", "element", "goneb"]
  type        = set(string)
}
variable "gh_pages_ipv4" {
  description = "IPv4 records for GitHub pages"
  default     = ["185.199.108.153", "185.199.109.153", "185.199.110.153", "185.199.111.153"]
  type        = set(string)
}
variable "gh_pages_ipv6" {
  description = "IPv6 records for GitHub pages"
  default     = ["2606:50c0:8000::153", "2606:50c0:8001::153", "2606:50c0:8002::153", "2606:50c0:8003::153"]
  type        = set(string)
}
