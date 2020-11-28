variable "appId" {
    type = string
    description = "app id associated with the service principle used for authentication"
}

variable "password" {
    type = string
    description = "password associated with the service principle used for authentication"
}

variable "resourceGroupName" {
    type = string
    description = "prefix for all resources created"
}

variable "region" {
    type = string
    description = "geographical region to deploy your cluster"
}