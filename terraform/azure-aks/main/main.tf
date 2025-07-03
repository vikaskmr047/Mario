module "resource_group" {
  source = "../modules/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "aks_cluster" {
  source = "../modules/aks"

  kubernetes_cluster_name = var.cluster_name
  dns_prefix              = var.dns_prefix
  resource_group_name     = var.resource_group_name
  location                = var.location
  depends_on              = [ module.resource_group ]
}

module "virtual_network" {
  source = "../modules/virtual_network"

  virtual_network_name         = var.virtual_network_name
  virtual_network_addressspace = var.virtual_network_addressspace
  resource_group_name = var.resource_group_name
  location = var.location
  depends_on = [ module.resource_group ]
}