resource "aws_security_group" "server_sg" {
  name        = "server_sg"
  description = "security group for ec2 server"
  vpc_id = "vpc-895e94e2"

    dynamic "ingress" {
      for_each = var.sg_ports
      iterator = port
      content {
        to_port = port.value
        from_port = port.value
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }
    }
    egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "server-sg"
  }

}

