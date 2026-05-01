terraform{
  required_providers{
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3-webapp" {
  source = "app.terraform.io/ITCC2200KVB/s3-webapp/aws"
  name = var.name
  region = var.region
  prefix = var.prefix
  version = '1.0.0"
}

data "aws_ami" "amazon-linux-2" {
 most_recent = true

 filter {
   name   = "owner-alias"
   values = ["amazon"]
 }

 filter {
   name   = "name"
   values = ["amzn2-ami-hvm*"]
 }

 owners = ["amazon"]
}

resource "aws_instance" "amazon-linux-2" {
  ami           = "ami-098e39bafa7e7303d"  #data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
    "Linux Distribution" = "Amazon Linux 2"
  }
  
}
