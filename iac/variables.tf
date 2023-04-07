# Define variables for resource names and locations
variable "resource_group_name" {
  description = "The resource group for the app deployment"
  default = "prunedge"
}

variable "location" {
  description = "The Azure Region were the resource should exist"
  default = "westeurope"
}

variable "acr_name" {
  description = "The Azure Container Registry for the app deployment Docker image"
  default = "prunedgecr"
}

variable "asp_name" {
  description = "The app service plan for the app deployment webApp"
  default = "prunedgeasp"
}

variable "insight_name" {
  description = "The Azure monitor insight"
  default = "prunedge-insight"
}

variable "lwapp_name" {
  description = "The Azure linux webApp where the app deployment docker image is deployed"
  default = "prunedgewebapp"
}
