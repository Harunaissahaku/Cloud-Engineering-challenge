
resource "aws_instance" "app" {
  ami                    = "ami-0c02fb55956c7d316" # Amazon Linux 2 (adjust per region)
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = file("userdata.sh")

  tags = {
    Name = "graylog-app"
  }
}
