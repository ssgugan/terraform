provider "aws" {
        region = var.region
	access_key = var.access_key
	secret_key = var.secret_key
}

resource "aws_instance" "webserver" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id     = "subnet-07152dfe960fc56a1"
  tags = {
      Name = "test"
  } 

  lifecycle {
     ignore_changes = all
  }	

}
