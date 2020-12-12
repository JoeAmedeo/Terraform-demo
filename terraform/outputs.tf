output "kube_config" {
  description = "config file used to authenticate kubectl to the cluster"
  sensitive = true
  value = azurerm_kubernetes_cluster.default.kube_config_raw
}