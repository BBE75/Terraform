# Bash script to install apache2 on linux after provisioning the VM
data "template_file" "linux-vm-cloud-init" {
    template = file("${path.module}/Files/azure-user-data.sh")
}