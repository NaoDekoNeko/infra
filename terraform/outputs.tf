output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "cert_manager_identity_client_id" {
  value = azurerm_user_assigned_identity.cert_manager.client_id
}
