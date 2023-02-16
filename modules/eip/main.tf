resource "aws_eip" "instance_eip" {
  vpc = true
  tags = {
    Name = "${var.eip-tag}"
  }
}