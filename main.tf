resource "azurerm_resource_group" "task6" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "task6" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.task6.name
  location                 = azurerm_resource_group.task6.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}