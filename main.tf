provider "aws" {
  region     = var.azname
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "instance_ec2" {
  /*count           = var.ec2_instance_count*/
  ami             = var.instance_ami_map["ubuntu"]
  instance_type   = var.instance_type_map["small"]
  security_groups = ["allow_http"]
  tags = {
    Name = "webserver"
  }
}
