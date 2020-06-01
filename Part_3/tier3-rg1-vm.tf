# Create Linux VM with web server
resource "azurerm_linux_virtual_machine" "vm3-1-rg1" {

    depends_on            =[azurerm_network_interface.nic3-1-rg1]
    name                  = "vm3-1-rg1"
    location              = azurerm_resource_group.rg1.location
    resource_group_name   = azurerm_resource_group.rg1.name
    network_interface_ids = [azurerm_network_interface.nic3-1-rg1.id]
    size                  = var.web-linux-vm-size

    source_image_reference {
        offer     = lookup(var.web-linux-vm-image, "offer", null)
        publisher = lookup(var.web-linux-vm-image, "publisher", null)
        sku       = lookup(var.web-linux-vm-image, "sku", null)
        version   = lookup(var.web-linux-vm-image, "version", null)
    }
    os_disk {
        name = "vm3-1-rg1"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    computer_name = "vm3-1-rg1"
    admin_username = var.admin_name
    admin_password = var.admin_pass
    custom_data = base64encode(data.template_file.linux-vm-cloud-init.rendered)
    disable_password_authentication = false
    tags = {
        environment = var.tag-1
    }
}

# Create Linux VM with web server
resource "azurerm_linux_virtual_machine" "vm3-2-rg1" {

    depends_on            =[azurerm_network_interface.nic3-2-rg1]
    name                  = "vm3-2-rg1"
    location              = azurerm_resource_group.rg1.location
    resource_group_name   = azurerm_resource_group.rg1.name
    network_interface_ids = [azurerm_network_interface.nic3-2-rg1.id]
    size                  = var.web-linux-vm-size

    source_image_reference {
        offer     = lookup(var.web-linux-vm-image, "offer", null)
        publisher = lookup(var.web-linux-vm-image, "publisher", null)
        sku       = lookup(var.web-linux-vm-image, "sku", null)
        version   = lookup(var.web-linux-vm-image, "version", null)
    }
    os_disk {
        name = "vm3-2-rg1"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    computer_name = "vm3-2-rg1"
    admin_username = var.admin_name
    admin_password = var.admin_pass
    custom_data = base64encode(data.template_file.linux-vm-cloud-init.rendered)
    disable_password_authentication = false
    tags = {
        environment = var.tag-1
    }
}

# Create Linux VM with web server
resource "azurerm_linux_virtual_machine" "vm3-3-rg1" {

    depends_on            =[azurerm_network_interface.nic3-3-rg1]
    name                  = "vm3-3-rg1"
    location              = azurerm_resource_group.rg1.location
    resource_group_name   = azurerm_resource_group.rg1.name
    network_interface_ids = [azurerm_network_interface.nic3-3-rg1.id]
    size                  = var.web-linux-vm-size

    source_image_reference {
        offer     = lookup(var.web-linux-vm-image, "offer", null)
        publisher = lookup(var.web-linux-vm-image, "publisher", null)
        sku       = lookup(var.web-linux-vm-image, "sku", null)
        version   = lookup(var.web-linux-vm-image, "version", null)
    }
    os_disk {
        name = "vm3-3-rg1"
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    computer_name = "vm3-3-rg1"
    admin_username = var.admin_name
    admin_password = var.admin_pass
    custom_data = base64encode(data.template_file.linux-vm-cloud-init.rendered)
    disable_password_authentication = false
    tags = {
        environment = var.tag-1
    }
}