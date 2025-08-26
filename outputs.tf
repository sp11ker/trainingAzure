# 1. Output Public IP of the VM
output "instance_public_ip" {
  value = azurerm_public_ip.main.ip_address
}

# 2. Output the private key PEM
output "private_key_pem" {
  value     = tls_private_key.example.private_key_pem
  sensitive = true
}

# 3. Save private key locally
resource "local_file" "private_key" {
  content        = tls_private_key.example.private_key_pem
  filename       = "${path.module}/my-keypair.pem"
  file_permission = "0400"
}
