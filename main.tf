provider "aws" {
  region = "ap-northeast-2"
}
resource "aws_instance" "example" {
  ami = "ami-063db2954fe2eec9f"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}