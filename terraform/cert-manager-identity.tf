resource "azurerm_user_assigned_identity" "cert_manager" {
  name                = "id-cert-manager-dns01"
  resource_group_name = data.azurerm_resource_group.main.name
  location            = data.azurerm_resource_group.main.location
}

resource "azurerm_federated_identity_credential" "cert_manager" {
  name                      = "cert-manager-dns01"
  audience                  = ["api://AzureADTokenExchange"]
  issuer                    = azurerm_kubernetes_cluster.aks.oidc_issuer_url
  subject                   = "system:serviceaccount:cert-manager:cert-manager"
  user_assigned_identity_id = azurerm_user_assigned_identity.cert_manager.id
}

resource "azurerm_role_assignment" "cert_manager_dns" {
  scope                = azurerm_dns_zone.naodeko_site.id
  role_definition_name = "DNS Zone Contributor"
  principal_id         = azurerm_user_assigned_identity.cert_manager.principal_id
}
