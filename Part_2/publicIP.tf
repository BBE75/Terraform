# Create public IP
resource "azurerm_public_ip" "publicIp1" {
    name                         = "publicIp1"
    location                     = azurerm_resource_group.RG1.location
    resource_group_name          = azurerm_resource_group.RG1.name
    sku                          = "Standard"

    allocation_method            = "Static"
    domain_name_label            = "esgi-ben-part2"
    zones                        = [2]

    tags = {
        environment =  var.tag
    }
}

# Create public IP
resource "azurerm_public_ip" "publicIp2" {
    name                         = "publicIp2"
    location                     = azurerm_resource_group.RG1.location
    resource_group_name          = azurerm_resource_group.RG1.name
    sku                          = "Standard"

    allocation_method            = "Static"
    domain_name_label            = "esgi-ben-part2-bastion"
    zones                        = [3]

    tags = {
        environment =  var.tag
    }
}