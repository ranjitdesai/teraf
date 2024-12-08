#data "aws_subnet" "all" {
 #   filter {
  #      name = "tag:ranjit"
   #}  
#}
resource "aws_instance" "okk" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumkey"
   # subnet_id = data.aws_subnet.vpcsub.id
}
data "aws_subnets" "all" {}

output "all_subnets" {
  value = data.aws_subnets.all.ids
}
