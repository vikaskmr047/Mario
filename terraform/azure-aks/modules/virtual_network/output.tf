output "virtual_network_id" {
  value = azurerm_virtual_network.virtual_network.id
}

# output "subnet_ids" {
# value = {for s in azurerm_subnet.subnet : s => azurerm_subnet.subnet.id }
# }

output "subnet_ids"{
    value = azurerm_subnet.subnet
}