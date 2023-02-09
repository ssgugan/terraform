provider "aws" {
        region = var.region
	access_key = var.access_key
	secret_key = var.secret_key
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