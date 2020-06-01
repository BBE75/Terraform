# Create public IP
resource "azurerm_public_ip" "traffic-manager" {
    name                         = "traffic-manager"
    location                     = azurerm_resource_group.rg1.location
    resource_group_name          = azurerm_resource_group.rg1.name

    allocation_method            = "Dynamic"
    domain_name_label            = "esgi-ben-part3"

    tags = {
        environment =  var.tag-1
    }
}