provider "azurerm" {
    version = "=2.25.0"

    client_id = var.APP_ID
    client_secret = var.PASSWORD
    tenant_id = var.TENANT_ID
    subscription_id = var.SUBSCRIPTION_ID

    skip_provider_registration = true

    features {}
}

#Resource group already created

resource "azurerm_storage_account" "default" {
  name = "${var.RESOURCE_PREFIX}-storage-account"
  resource_group_name = var.RESOURCE_GROUP_NAME
  location = var.REGION
  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "default" {
  name = "tfstate"
  storage_account_name = azurerm_storage_account.default.name
  container_access_type = "private"
}

resource "azurerm_kubernetes_cluster" "default" {
    name = "${var.RESOURCE_PREFIX}-aks"
    location = var.REGION
    resource_group_name = var.RESOURCE_GROUP_NAME
    dns_prefix = "${var.RESOURCE_PREFIX}-k8s"

    default_node_pool {
      name = "default"
      node_count = 1
      vm_size = "Standard_A2_v2"
    }

    service_principal {
      client_id = var.APP_ID
      client_secret = var.PASSWORD
    }

    role_based_access_control {
      enabled = true
    }
}