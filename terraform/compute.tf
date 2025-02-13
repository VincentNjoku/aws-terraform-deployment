resource "aws_instance" "web_server" {
  ami                    = "ami-085ad6ae776d8f09c" #Amazon Linux 2023 AMI 
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.instance_sg.id]

  tags = { Name = "Terraform-EC2" }
}
