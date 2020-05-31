# Create virtual machine
resource "azurerm_virtual_machine" "vm1" {
  name                  = var.hostname
  location              = azurerm_resource_group.RG1.location
  resource_group_name   = azurerm_resource_group.RG1.name
  network_interface_ids = [azurerm_network_interface.nic1.id]
  vm_size               = "Standard_DS1_v2"

storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2012-Datacenter"
    version   = "latest"
  }


 storage_os_disk {
   name               = "Os"
   caching            = "ReadWrite"
   create_option      = "FromImage"
   managed_disk_type  = "Standard_LRS"
 }

  storage_data_disk {
   name              = "Data1"
   managed_disk_type = "Standard_LRS"
   create_option     = "Empty"
   lun               = 0
   disk_size_gb      = "128"
 }
 
  storage_data_disk {
   name              = "Data2"
   managed_disk_type = "Standard_LRS"
   create_option     = "Empty"
   lun               = 1
   disk_size_gb      = "128"
 }

os_profile {
    computer_name  = var.hostname
    admin_username = var.admin_name
    admin_password = var.admin_pass
    custom_data    = file("${path.module}/Files/winrm.ps1")

  }

os_profile_windows_config {
    enable_automatic_upgrades = "true"
    provision_vm_agent = "true"
    winrm {
      protocol = "http"
    }
    # Auto-Login's required to configure WinRM
    additional_unattend_config {
      pass         = "oobeSystem"
      component    = "Microsoft-Windows-Shell-Setup"
      setting_name = "AutoLogon"
      content      = "<AutoLogon><Password><Value>${var.admin_pass}</Value></Password><Enabled>true</Enabled><LogonCount>1</LogonCount><Username>${var.admin_name}</Username></AutoLogon>"
    }

    # Unattend config is to enable basic auth in WinRM, required for the provisioner stage.
    additional_unattend_config {
      pass         = "oobeSystem"
      component    = "Microsoft-Windows-Shell-Setup"
      setting_name = "FirstLogonCommands"
      content      = file("${path.module}/Files/FirstLogonCommands.xml")
    }
  }
connection {
    host     = azurerm_public_ip.publicIp1.fqdn
    type     = "winrm"
    port     = 5985
    https    = false
    timeout  = "2m"
    user     = var.admin_name
    password = var.admin_pass
  }


# Copy Powershell script
provisioner "file" {
    source      = "disks.ps1"
    destination = "D:/terraform/disks.ps1"  
}

# Run script to format new disks
provisioner "remote-exec" {
    inline = [         
        "powershell.exe -ExecutionPolicy Bypass -File D:\\terraform\\disks.ps1"
    ]
  }

boot_diagnostics {
        enabled = true
        storage_uri = azurerm_storage_account.storageAccount1.primary_blob_endpoint
    }
  
depends_on = [
              azurerm_network_interface.nic1,
    ]

 tags = {
   environment =  var.tag
 }
}