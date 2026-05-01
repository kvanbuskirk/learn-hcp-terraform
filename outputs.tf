output "instance_ami" {
  value = aws_instance.amazon-linux-2.ami
}

output "instance_arn" {
  value = aws_instance.amazon-linux-2.arn
}

output "website_enddpoint" {
  value = module.s3-webapp.endpoint
}
