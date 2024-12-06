#create vpc
resource "aws_vpc" "dev" {
    cidr_block = "10.0.0.0/16"
    tags = {
      name="dev_vpc"
    }
  
}
#create subnet
resource "aws_subnet" "dev" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "devsub"
  }
}
#create internet gateway attach vpc
resource "aws_internet_gateway" "dev" {
  vpc_id = aws_vpc.dev.id

  tags = {
    Name = "internet"
  }
}

#create route table
resource "aws_route_table" "dev" {
  vpc_id = aws_vpc.dev.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev.id
  }

  tags = {
    Name = "dev-route-table"
  }
}

#create subnet assocation
resource "aws_route_table_association" "dev" {
  subnet_id      = aws_subnet.dev.id
  route_table_id = aws_route_table.dev.id
}

resource "aws_security_group" "dev" {
  name   = "allow_traffic"
  vpc_id = aws_vpc.dev.id

  tags = {
    Name = "devsg"
  }

  ingress {
    description = "HTTP traffic"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH traffic"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
terraform {
  backend "s3" {
    bucket = "desaiaws"#you create s3 bucket in server
    region = "ap-south-1"
    key = "terraform.tfstate"
    encrypt = true
  }
  
}



