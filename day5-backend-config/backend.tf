# Run first terraform-10-30am/day-4-resources_for_backend_s3_dynamodb to create reources 
# This backend configuration instructs Terraform to store its state in an S3 bucket.
 
terraform {
  backend "s3" {
    bucket         = "notbook-write"       # Name of your S3 bucket
    region         = "ap-south-1"         # Region where the bucket and DynamoDB table are located
    key            = "terraform.tfstate"  # Path within the bucket to store the state file
    #dynamodb_table = "terraform-state-lock-dynamo"  # DynamoDB table for state locking
    encrypt        = true                 # Enables encryption at rest for the state file in S3
  }
}

