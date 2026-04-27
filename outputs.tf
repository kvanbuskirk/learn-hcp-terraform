output "instance_ami" {
  value = aws_instance.amazon-linux-2.ami
}

output "instance_arn" {
  value = aws_instance.amazon-linux-2.arn
}
output "instance_ami" {
   description = "AMI used to create the EC2 instance."
   value       = aws_instance.app_server.ami
}
