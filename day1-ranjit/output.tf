output "name" {
    description = "print az ip"
    value = aws_instance.name.availability_zone
 
}