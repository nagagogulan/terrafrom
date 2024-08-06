provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0ba9883b710b05ac6"
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  associate_public_ip_address = true # Ensures a public IP is assigned

  tags = {
    Name = "MyEC2Instance"
  }
}

output "instance_ip" {
  value = aws_instance.my_ec2.public_ip
}
