# Create Network Security Group and rule for RDP
resource "azurerm_network_security_group" "nsg1" {
    name                = "nsg1"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name
    
    security_rule {
        name                       = "HTTPS"
        priority                   = 1000
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "HTTPS"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }
}

# Create Network Security Group and rule for SSH
resource "azurerm_network_security_group" "nsg2" {
    name                = "nsg2"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name
    
    security_rule {
        name                       = "SSH-Public"
        priority                   = 1002
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = var.tag
    }
}

# Create Network Security Group and rule for SSH
resource "azurerm_network_security_group" "nsg3" {
    name                = "nsg3"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name
    
    security_rule {
        name                       = "SSH"
        priority                   = 1003
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = azurerm_subnet.subnet1.address_prefixes
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "All"
        priority                   = 1004
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = azurerm_subnet.subnet2.address_prefixes
        destination_address_prefix = "*"
    }

    tags = {
        environment = var.tag
    }
}


# Create Network Security Group and rule for SSH
resource "azurerm_network_security_group" "nsg4" {
    name                = "nsg4"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name
    
    security_rule {
        name                       = "SSH"
        priority                   = 1005
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = azurerm_subnet.subnet2.address_prefixes
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "All"
        priority                   = 1006
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = azurerm_subnet.subnet3.address_prefixes
        destination_address_prefix = "*"
    }

    tags = {
        environment = var.tag
    }
}

# Create Network Security Group and rule for SSH
resource "azurerm_network_security_group" "nsg5" {
    name                = "nsg5"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name
    
    security_rule {
        name                       = "SSH"
        priority                   = 1007
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = azurerm_subnet.subnet2.address_prefixes
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "All"
        priority                   = 1008
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = azurerm_subnet.subnet4.address_prefixes
        destination_address_prefix = "*"
    }

    tags = {
        environment = var.tag
    }
}

# Create Network Security Group and rule for SSH
resource "azurerm_network_security_group" "nsg6" {
    name                = "nsg6"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name
    
    security_rule {
        name                       = "SSH"
        priority                   = 1009
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = azurerm_subnet.subnet2.address_prefixes
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "All"
        priority                   = 1010
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = azurerm_subnet.subnet5.address_prefixes
        destination_address_prefix = "*"
    }

    tags = {
        environment = var.tag
    }
}