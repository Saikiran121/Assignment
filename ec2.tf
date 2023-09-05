# EC2 instance
resource "aws_instance" "instance" {
  ami           = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  key_name      = "linux"
  associate_public_ip_address = true
  subnet_id = aws_subnet.pub_sub.id
  #security_groups = [aws_security_group.sg.id]

  tags = {
    Name = "project"
  }
}