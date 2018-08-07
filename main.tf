provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-west-1"
}

resource "aws_instance" "my-machine-west1" {
  ami = "ami-e0ba5c83"
  instance_type = "t2.micro"
  key_name = "marks_ca_key_pair"
  subnet_id = "${var.my_subnet}"
}
