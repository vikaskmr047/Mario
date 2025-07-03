resource "azurerm_virtual_network" "virtual_network" {
  name = var.virtual_network_name
  address_space = var.virtual_network_addressspace
  resource_group_name = var.resource_group_name
  location = var.location
}

resource "azurerm_subnet" "subnet" {
 for_each = var.subnets
 name = each.key
 address_prefixes = [each.value]
 resource_group_name = var.resource_group_name
 virtual_network_name = var.virtual_network_name
}