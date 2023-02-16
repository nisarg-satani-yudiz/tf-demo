provider "aws" {
  region  = var.region
  profile = "tf"
}
  provider "tls" {
  version = "4.0"
  }