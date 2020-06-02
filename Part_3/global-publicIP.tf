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

# Create public IP
resource "azurerm_public_ip" "lb1-rg1" {
    name                         = "loadbalancer-rg1"
    location                     = azurerm_resource_group.rg1.location
    resource_group_name          = azurerm_resource_group.rg1.name

    allocation_method            = "Dynamic"
    domain_name_label            = "esgi-ben-part3-rg1"

    tags = {
        environment =  var.tag-1
    }
}

# Create public IP
resource "azurerm_public_ip" "lb1-rg2" {
    name                         = "loadbalancer-rg2"
    location                     = azurerm_resource_group.rg2.location
    resource_group_name          = azurerm_resource_group.rg2.name

    allocation_method            = "Dynamic"
    domain_name_label            = "esgi-ben-part3-rg2"

    tags = {
        environment =  var.tag-2
    }
}