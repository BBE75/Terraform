# Create virtual machine
resource "azurerm_linux_virtual_machine" "jumpbox" {
  name                  = var.hostname
  location              = azurerm_resource_group.RG1.location
  resource_group_name   = azurerm_resource_group.RG1.name
  network_interface_ids = [azurerm_network_interface.nic2.id]
  size                  = "Standard_DS1_v2"

  zone                  = "3"

os_disk {
        caching           = "ReadWrite"
        storage_account_type = "Premium_LRS"
    }

    source_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04.0-LTS"
        version   = "latest"
    }

    computer_name  = var.hostname
    admin_username = var.admin_name
    admin_password = var.admin_pass
    disable_password_authentication = false
 
 tags = {
   environment =  var.tag
 }
}