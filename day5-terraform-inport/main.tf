resource "aws_instance" "myvm" {
    ami = "ami-0614680123427b75e" 
    instance_type = "t2.micro"
    tags = {
      Name = "ec2"
    }
  
}

resource "aws_s3_bucket" "dev" {
    bucket = "importbucketdg"
  
}