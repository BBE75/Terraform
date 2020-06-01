# Create Network Security Group and rule for RDP
resource "azurerm_network_security_group" "nsg2-rg1" {
    name                = "nsg2-rg1"
    location            = azurerm_resource_group.rg1.location
    resource_group_name = azurerm_resource_group.rg1.name
    
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

    # create a rule to allow WinRM inbound to all nodes in the network. Note the priority. All rules but have a unique priority
    security_rule {
        name                       = "Allow_WinRM"
        priority                   = 1002
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "5985"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = var.tag-1
    }
}