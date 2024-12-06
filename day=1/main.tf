resource "aws_instance" "web" {
    ami ="ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumkey"
    availability_zone ="ap-south-1a"
    tags = {
        name="ranjitdesai"
    }
}