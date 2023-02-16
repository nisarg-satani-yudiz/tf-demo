module "key_pair" {
  source = "./modules/key_pair"  
}

#create ec2
module "ec2" {
  source    = "./modules/ec2"
  public_sg = [module.security_groups.output_security_group_id]
  ec2_key_name = module.key_pair.output_key_name
  # security_groups = module.security_groups.output_security_group_id
}

# create EIP
module "eip" {
  source = "./modules/eip"
}
# attach EIP to instace
resource "aws_eip_association" "instance_eip_attach" {
  allocation_id = module.eip.output_eip_id
  instance_id   = module.ec2.output_aws_ec2_id
}
# create security group
module "security_groups" {
  source = "./modules/security_groups"
}
