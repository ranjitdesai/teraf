variable "ami" {
    description = "inserting ami value"
    type =string
    default = "ami-0614680123427b75e"  
} 
variable "type" {
    description = "inserting value for instance type"
    type = string
    default = "t2.micro"
}
variable "key_name" {
    description = "inserting value of key"
    type = string
    default = "mumkey2"
}
variable "availability_zone" {
    description = "inserting value for availability"
    type = string
    default = "ap-south-1b"
}
