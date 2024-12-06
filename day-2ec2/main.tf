provider "aws" {
  
region = "ap-south-1"
}
resource "aws_instance" "lecc2" {
  ami = var.yyami
  instance_type = var.yyinstance_type
  key_name = var.yykey_name
  tags = {
    Name = "myec3" 
  }
  
}
