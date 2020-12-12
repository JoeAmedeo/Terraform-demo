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

resource "azurerm_kubernetes_cluster" "default" {
    name = "${var.RESOURCE_GROUP_NAME}-aks"
    location = var.REGION
    resource_group_name = "$Joe.Amedeo-rg"
    dns_prefix = "${var.RESOURCE_GROUP_NAME}-k8s"

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

    addon_profile {
      kube_dashboard {
          enabled = true
      }
    }
}