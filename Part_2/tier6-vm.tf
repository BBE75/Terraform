# Create Linux VM with sql server
resource "azurerm_linux_virtual_machine" "adds6" {

    depends_on            =[azurerm_network_interface.nic5]
    name                  = "adds6"
    location              = azurerm_resource_group.RG1.location
    resource_group_name   = azurerm_resource_group.RG1.name
    network_interface_ids = [azurerm_network_interface.nic6.id]
    size                  = var.business-linux-vm-size
    zone                  = "1"

    source_image_reference {
        offer     = lookup(var.web-linux-vm-image, "offer", null)
        publisher = lookup(var.web-linux-vm-image, "publisher", null)
        sku       = lookup(var.web-linux-vm-image, "sku", null)
        version   = lookup(var.web-linux-vm-image, "version", null)
    }
    os_disk {
        name = "adds6-vm-os-disk"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    computer_name = "adds6"
    admin_username = var.admin_name
    admin_password = var.admin_pass
    custom_data = base64encode(data.template_file.linux-vm-cloud-init.rendered)
    disable_password_authentication = false
    tags = {
        environment = var.tag
    }
}

# Create Linux VM with web server
resource "azurerm_linux_virtual_machine" "adds62" {

    depends_on            =[azurerm_network_interface.nic6-2]
    name                  = "adds6-2"
    location              = azurerm_resource_group.RG1.location
    resource_group_name   = azurerm_resource_group.RG1.name
    network_interface_ids = [azurerm_network_interface.nic6-2.id]
    size                  = var.business-linux-vm-size
    zone                  = "3"

    source_image_reference {
        offer     = lookup(var.web-linux-vm-image, "offer", null)
        publisher = lookup(var.web-linux-vm-image, "publisher", null)
        sku       = lookup(var.web-linux-vm-image, "sku", null)
        version   = lookup(var.web-linux-vm-image, "version", null)
    }
    os_disk {
        name = "adds6-2-vm-os-disk"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    computer_name = "adds6-2"
    admin_username = var.admin_name
    admin_password = var.admin_pass
    custom_data = base64encode(data.template_file.linux-vm-cloud-init.rendered)
    disable_password_authentication = false
    tags = {
        environment = var.tag
    }
}
