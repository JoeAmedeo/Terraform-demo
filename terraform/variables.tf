variable "APP_ID" {
    type = string
    description = "app id associated with the service principle used for authentication"
}

variable "PASSWORD" {
    type = string
    description = "password associated with the service principle used for authentication"
}

variable "RESOURCE_GROUP_NAME" {
    type = string
    description = "prefix for all resources created"
}

variable "REGION" {
    type = string
    description = "geographical region to deploy your cluster"
}