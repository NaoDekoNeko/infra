resource "azurerm_dns_zone" "naodeko_site" {
  name                = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.main.name
}

resource "azurerm_dns_a_record" "hola_mibanco" {
  name                = "hola-mibanco"
  zone_name           = azurerm_dns_zone.naodeko_site.name
  resource_group_name = data.azurerm_resource_group.main.name
  ttl                 = 300
  records             = [var.ingress_public_ip]
}
