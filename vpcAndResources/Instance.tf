resource "aws_instance" "web" {
  ami                    = var.amiID[var.region]
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.wzops-key.key_name
  subnet_id              = aws_subnet.wzops-priv-1.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  availability_zone      = var.zone1

  user_data = file("web.sh")

  tags = {
    Name    = "wzops-web"
    Project = "wzops"
  }

  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }

}
