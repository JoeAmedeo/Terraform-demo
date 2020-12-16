output "kube_config" {
  description = "config file used to authenticate kubectl to the cluster"
  sensitive = true
  value = azurerm_kubernetes_cluster.default.kube_config_raw
}

output "storage_account_key" {
  description = "key to access azure storage account"
  sensitive = true
  value = azurerm_storage_account.default.primary_access_key
}

output "storage_account" {
  description = "storage account where we will be uploading our state file"
  value = azurerm_storage_account.default.name
}

output "storage_account_container" {
  description = "the container in the storage account in which to put out state file"
  value = azurerm_storage_container.default.name
}