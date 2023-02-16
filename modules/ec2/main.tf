resource "aws_instance" "myec2" {
  ami           = "ami-0f8ca728008ff5af4"
  instance_type = var.instance_type
  key_name      = "${var.ec2_key_name}"
  #key_name = "gitlab-runner"
  vpc_security_group_ids = "${var.public_sg}"
  user_data = "${file("${path.module}/${var.file-name}.sh")}"
  root_block_device {
    delete_on_termination = true
    #iops = 150
    volume_size = var.block-size
    volume_type = "gp2"
  }
  tags = {
    "Name" = "${var.ec2-name}-server"
  }
  
}