# Create Network Security Group and rule for RDP
resource "azurerm_network_security_group" "nsg1" {
    name                = "nsg1"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name
    
    security_rule {
        name                       = "RDP"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = var.tag
    }
}