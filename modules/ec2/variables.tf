variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "ec2-name" {
  type    = string
  default = "laravel-demo"
}
variable "public_sg" {}
variable "ec2_key_name" {
  type = string
}
variable "file-name" {
  type = string
  default = "user-data"  
}
variable "block-size" {
  type = number
  default = 15
}