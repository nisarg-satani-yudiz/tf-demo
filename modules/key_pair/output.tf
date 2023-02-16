output "ssh_key_games247" {
  value = "${local.ssh_key}"
}
output "output_key_name" {
  value = aws_key_pair.ssh_key_pair.key_name
}