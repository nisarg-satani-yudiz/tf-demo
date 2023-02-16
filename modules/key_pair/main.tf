resource "tls_private_key" "rsa_key_games247" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

locals {
  ssh_key = "${base64encode(tls_private_key.rsa_key_games247.private_key_pem)}"
}



# resource "tls_private_key" "key_pair" {
#   algorithm = "RSA"
#   rsa_bits = 4096
# }
# resource "aws_key_pair" "ssh_key_pair" {
#   key_name = "${var.private_key_name}"
#   public_key = tls_private_key.key_pair.public_key_openssh
# }
# # provisioner "local-exec" {
# #     command = "echo '${tls_private_key.key_pair.private_key_pem}' > ./laravel-demo.pem"
# # }
# resource "local_file" "private_key_file" {
#     content  = tls_private_key.key_pair.private_key_pem
#     filename = "${path.module}/${var.private_key_name}.pem"
# }