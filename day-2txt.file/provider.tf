

provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "web" {
    ami ="ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumkey"
    availability_zone ="ap-south-1a"
}
resource "aws_s3_bucket" "test_bucket" {
  bucket = "ranjitdesai-bucketrd1iiii"
}

resource "aws_s3_object" "prasad" {
    bucket = aws_s3_bucket.test_bucket.bucket
    source = "./file.txt"
    key = "file.txt"

    
  }
