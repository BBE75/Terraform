# Create Linux VM with web server
resource "azurerm_linux_virtual_machine" "vm1-1-rg2" {

    depends_on            =[azurerm_network_interface.nic1-1-rg2]
    name                  = "vm1-1-rg2"
    location              = azurerm_resource_group.rg2.location
    resource_group_name   = azurerm_resource_group.rg2.name
    network_interface_ids = [azurerm_network_interface.nic1-1-rg2.id]
    size                  = var.web-linux-vm-size

    source_image_reference {
        offer     = lookup(var.web-linux-vm-image, "offer", null)
        publisher = lookup(var.web-linux-vm-image, "publisher", null)
        sku       = lookup(var.web-linux-vm-image, "sku", null)
        version   = lookup(var.web-linux-vm-image, "version", null)
    }
    os_disk {
        name = "vm1-1-rg2"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    computer_name = "vm1-1-rg2"
    admin_username = var.admin_name
    admin_password = var.admin_pass
    custom_data = base64encode(data.template_file.linux-vm-cloud-init.rendered)
    disable_password_authentication = false
    tags = {
        environment = var.tag-2
    }
}

# Create Linux VM with web server
resource "azurerm_linux_virtual_machine" "vm1-2-rg2" {

    depends_on            =[azurerm_network_interface.nic1-2-rg2]
    name                  = "vm1-2-rg2"
    location              = azurerm_resource_group.rg2.location
    resource_group_name   = azurerm_resource_group.rg2.name
    network_interface_ids = [azurerm_network_interface.nic1-2-rg2.id]
    size                  = var.web-linux-vm-size

    source_image_reference {
        offer     = lookup(var.web-linux-vm-image, "offer", null)
        publisher = lookup(var.web-linux-vm-image, "publisher", null)
        sku       = lookup(var.web-linux-vm-image, "sku", null)
        version   = lookup(var.web-linux-vm-image, "version", null)
    }
    os_disk {
        name = "vm1-2-rg2"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    computer_name = "vm1-2-rg2"
    admin_username = var.admin_name
    admin_password = var.admin_pass
    custom_data = base64encode(data.template_file.linux-vm-cloud-init.rendered)
    disable_password_authentication = false
    tags = {
        environment = var.tag-2
    }
}

# Create Linux VM with web server
resource "azurerm_linux_virtual_machine" "vm1-3-rg2" {

    depends_on            =[azurerm_network_interface.nic1-3-rg2]
    name                  = "vm1-3-rg2"
    location              = azurerm_resource_group.rg2.location
    resource_group_name   = azurerm_resource_group.rg2.name
    network_interface_ids = [azurerm_network_interface.nic1-3-rg2.id]
    size                  = var.web-linux-vm-size

    source_image_reference {
        offer     = lookup(var.web-linux-vm-image, "offer", null)
        publisher = lookup(var.web-linux-vm-image, "publisher", null)
        sku       = lookup(var.web-linux-vm-image, "sku", null)
        version   = lookup(var.web-linux-vm-image, "version", null)
    }
    os_disk {
        name = "vm1-3-rg2"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    computer_name = "vm1-3-rg2"
    admin_username = var.admin_name
    admin_password = var.admin_pass
    custom_data = base64encode(data.template_file.linux-vm-cloud-init.rendered)
    disable_password_authentication = false
    tags = {
        environment = var.tag-2
    }
}