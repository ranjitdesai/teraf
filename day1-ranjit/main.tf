 resource "aws_instance" "name" {
     ami = var.ami
     instance_type = var.type
     key_name =var.key_name
     availability_zone = var.availability_zone
    tags = {
      name="ranjit"
    }
}
resource "aws_s3_bucket" "ranjit" {
    bucket = "ranjit-bucket-sdfdf"

}
resource "aws_s3_object" "playing" {
    bucket = aws_s3_bucket.ranjit.bucket
    source = "./file22.txt"
    key = "file22.txt"
  
}
