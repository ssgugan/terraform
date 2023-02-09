provider "aws" {
        region = var.region
}

data "aws_key_pair" "key" {
    key_name = "ohio"
}

resource "aws_instance" "webserver" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = data.aws_key_pair.key.key_name
  tags = {
      Name = "test"
  } 

  lifecycle {
     ignore_changes = all
  }	

}