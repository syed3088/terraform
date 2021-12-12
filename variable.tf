/*variable "ec2_instance_type_list" {
  description = "ec2 instance type list"
  type = list(string)
  default = [ "t2.micro","t3.micro","t3.large"]
}*/

variable "azname" {
  type    = string
  default = "us-east-2"
}

variable "instance_type_map" {
  description = "ec2 instance type"
  type        = map(string)
  default = {
    "small"  = "t2.micro"
    "medium" = "t3.micro"
    "large"  = "t3.large"
  }
}

/*variable "instance_name_list" {
  description = "ec2 instance name"
  type        = list(string)
  default     = ["Hello", "Terraform", "Code"]

}*/


variable "ec2_instance_count" {
  type    = number
  default = 1

}

variable "instance_ami_map" {
  description = "ec2 instance AMI"
  type        = map(string)
  default = {
    "ubuntu" = "ami-00399ec92321828f5"
    "linux"  = "ami-00dfe2c7ce89a450b"
    "redhat" = "ami-0ba62214afa52bec7"
  }
}

variable "access_key" {
  type    = string
  default = "AKIAXNJ4PYHBGGNVYCL5"
}


variable "secret_key" {
  type    = string
  default = "ZYxMxyuANmwqI+jEcpWytcDmiMpv2cnOg7e/ecPe"
}

/*variable "s3_bucket" {
  type = string
  default = "testtf3088"
  }*/