resource "azurerm_kubernetes_cluster" "aks" {
  name = var.kubernetes_cluster_name
  resource_group_name =  var.resource_group_name
  location = var.location

  
  default_node_pool {
    name = var.node_pool_name
    node_count = 2
    vm_size    = "Standard_D2_v2"
    
  }

  identity {
    type = "SystemAssigned"
  }
  dns_prefix          = var.dns_prefix

}