variable "resource_group_name" {
  type    = string
  default = "rg-mibanco-challenge"
}

variable "aks_name" {
  type    = string
  default = "aks-mibanco-challenge"
}

variable "acr_name" {
  type    = string
  default = "acrmibancochallenge" # único global, solo [a-z0-9], 5-50 chars
}

variable "dns_zone_name" {
  type    = string
  default = "naodeko.site"
}

variable "ingress_public_ip" {
  type    = string
  default = "57.166.193.16" # IP del LoadBalancer del F5 NIC (ingress-nginx/nginx-ingress-controller)
}
