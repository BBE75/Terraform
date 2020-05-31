# Create storage account for boot diagnostics
resource "azurerm_storage_account" "storageAccount1" {
    name                        = "log-part1"
    resource_group_name         = azurerm_resource_group.RG1.name
    location                    = azurerm_resource_group.RG1.location
    account_tier                = "Standard"
    account_replication_type    = "LRS"

    tags = {
        environment =  var.tag
    }
}

