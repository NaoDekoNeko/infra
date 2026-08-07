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
