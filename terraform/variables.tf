variable "APP_ID" {
    type = string
    description = "app id associated with the service principle used for authentication"
}

variable "PASSWORD" {
    type = string
    description = "password associated with the service principle used for authentication"
}

variable "TENANT_ID" {
    type = string
    description = "ID to determine your azure account"
}

variable SUBSCRIPTION_ID {
    type = string
    description = "ID to associate terraform to a particular azure subscription to create your resources in"
}

variable "RESOURCE_GROUP_NAME" {
    type = string
    description = "name of the resource group used for resource creation"
}

variable "RESOURCE_PREFIX" {
    type = string
    description = "prefix for all resources created"
}

variable "REGION" {
    type = string
    description = "geographical region to deploy your cluster"
}