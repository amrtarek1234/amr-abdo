output "vnet_name" {
  value = azurerm_virtual_network.main.name
}
# modules/connectivity/outputs.tf
output "vnet_id" {
  value = azurerm_virtual_network.main.id
}


output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "subnet_ids" {
  value = {
    for idx, name in var.subnet_names : name => azurerm_subnet.subnets[idx].id
  }
}

output "subnet_info" {
  value = {
    for idx, name in var.subnet_names : name => {
      id   = azurerm_subnet.subnets[idx].id
      name = azurerm_subnet.subnets[idx].name
    }
  }
  sensitive = true
}
