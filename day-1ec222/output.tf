output "name" {
  description = "Print AMI ID"
  value       = aws_instance.name.ami
}

