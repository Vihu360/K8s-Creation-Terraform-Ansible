# # Key-pair creation  -- not working rn
# resource "tls_private_key" "private_key" {
#   algorithm = "RSA"
#   rsa_bits  = 4096

#   provisioner "local-exec" {
#   command = <<EOT
#   mkdir -p ~/.ssh
#   ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N "" &> /dev/null
#   chmod 600 ~/.ssh/id_rsa
#   chmod 644 ~/.ssh/id_rsa.pub
#   EOT
# } }

# # Key pairs for instances
# resource "aws_key_pair" "k8-key" {
#   key_name   = "k8-vpc"
#   public_key = ("~/.ssh/id_rsa.pub")
# }

# Key pairs for instances ( manually create key pair on local before applying these commands )
resource "aws_key_pair" "k8-key" {
  key_name   = "k8-vpc"
  public_key = file("~/.ssh/id_rsa.pub")
}
