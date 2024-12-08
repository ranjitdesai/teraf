resource "aws_instance" "ranjit" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumkey"
    availability_zone = "ap-south-1a"
    tags = {
      Name = "vivo" 
    }
#lifecycle {
  #  prevent_destroy = false
   
#}

 #lifecycle {
    # ignore_changes = [ tags ]
     # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
 #}


 lifecycle {
    create_before_destroy = true
 }
}