#variables for providers
region = "ap-south-1"

#variables for EC2
instance_type = "t2.micro"
ec2-name = "games247"
block-size = 30

#variables for EIP
eip-tag = "games247"

#variables for key-pair 
private_key_name = "games247"

#varibales for security_group
sg_ports = [22, 80, 443]     #here you only mention the ports which you want to open for all