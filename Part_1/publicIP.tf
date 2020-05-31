# Create public IP
resource "azurerm_public_ip" "publicIp1" {
    name                         = "publicIp1"
    location                     = azurerm_resource_group.RG1.location
    resource_group_name          = azurerm_resource_group.RG1.name

    allocation_method            = "Dynamic"
    domain_name_label            = "esgi-ben-part1-vmaz"

    tags = {
        environment =  var.tag
    }
}