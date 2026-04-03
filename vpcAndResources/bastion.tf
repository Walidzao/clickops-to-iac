resource "aws_instance" "bastion" {
  ami                    = var.amiID[var.region]
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.wzops-key.key_name
  subnet_id              = aws_subnet.wzops-pub-1.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  availability_zone      = var.zone1

  tags = {
    Name = "wzops-bastion"
  }
}

resource "aws_eip" "bastion_eip" {
  instance = aws_instance.bastion.id
}
