resource "aws_instance" "name" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumkey2"
    tags = {
      name="ranjitdesai"

    }
}
terraform {
  backend "s3" {
    bucket = "desairanjit"
    region = "ap-south-1"
    key = "day4/table/terraform.tfstate"
    
  }
}
resource "aws_dynamodb_table" "name" {
    name="123dynamodb"
    hash_key = "lockid"
    read_capacity = 20
    write_capacity = 20
    attribute {   #Defines a schema attribute for a DynamoDB table. Each attribute represents a column in the table and defines its data type.
      name = "lockid"#Specifies the name of the attribute. In this case, the attribute is named lockid.
      type = "s"#string
    }
  
}