resource "aws_s3_bucket" "name" {
    bucket = "desairanjit"
    
  
}
terraform {
  backend "s3" {
    bucket  = "ranjitdesaixyz"    # The S3 bucket to store the state file
    region  = "ap-south-1"        # AWS region where the bucket resides
    key     = "terraform.tfstate" # Path/key for the state file within the bucket
    encrypt = true                # Enables server-side encryption for the state file
  }
}


terraform {
  backend "s3" {
    bucket = "ranjitdesaixyz"#you create s3 bucket in server
    region = "ap-south-1"
    key = "terraform.tfstate"
    encrypt = true
  }

}
