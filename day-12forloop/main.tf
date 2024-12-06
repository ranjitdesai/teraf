resource "aws_instance" "web" {
  ami                    = "ami-0614680123427b75e"      #change ami id for different region
  instance_type          = "t2.micro"
  key_name               = "mumkey"              #change key name as per your setup
 
  tags = {
    Name = "desairanjit"
  }

  root_block_device {         #we can give custom value here 
    volume_size = 40
  }
}

resource "aws_security_group" "pratice" {
  name        = "classmate"
  description = "Allow TLS inbound traffic"#A description of the rule. ("inbound rules" for all ports).

  ingress = [
    for port in [22, 80, 443, 8080, 9000, 3000, 8082, 8081, 3389] : {  
      description      = "inbound rules"
      from_port        = port  # The start of the port range for this rule. Set to port dynamically for each iterati
      to_port          = port  #The end of the port range for this rule. Matches from_port to limit to a single port
      protocol         = "tcp" #Specifies the protocol allowed (e.g., "tcp").
      cidr_blocks      = ["0.0.0.0/0"] #Specifies IPv4 address ranges allowed. Here, "0.0.0.0/0" means any IP address can access.
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "classmate"
  }
}