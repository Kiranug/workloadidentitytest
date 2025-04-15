output "resource_group_name" {
  description = "The name of the created resource group"
  value       = module.resource_group.name
}

output "vnet_name" {
  description = "The name of the created virtual network"
  value       = azurerm_virtual_network.main.name
}

# Add more outputs as needed