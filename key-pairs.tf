# Key-pair creation
resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096

  provisioner "local-exec" {
    command = <<EOT
    mkdir -p ~/.ssh
    echo '${self.private_key_pem}' > ~/.ssh/id_rsa
    chmod 600 ~/.ssh/id_rsa
    echo '${self.public_key_pem}' > ~/.ssh/id_rsa.pub
    chmod 644 ~/.ssh/id_rsa.pub
    EOT
  }
}

# Key pairs for instances
resource "aws_key_pair" "k8-key" {
  key_name   = "k8-vpc"
  public_key = filebase64("~/.ssh/id_rsa.pub")
}
