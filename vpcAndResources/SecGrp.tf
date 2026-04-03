resource "aws_security_group" "alb_sg" {
  name        = "wzops-alb-sg"
  vpc_id      = aws_vpc.wzops.id
  description = "ALB security group - allows HTTP from internet"
  tags = {
    Name = "wzops-alb-sg"
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "web_sg" {
  name        = "wzops-web-sg"
  vpc_id      = aws_vpc.wzops.id
  description = "Web instances security group - accepts traffic from ALB only"
  tags = {
    Name = "wzops-web-sg"
  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.alb_sg.id]
  }
  # allow SSH only from the bastion host security group
  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.bastion_sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "bastion_sg" {
  name        = "wzops-bastion-sg"
  vpc_id      = aws_vpc.wzops.id
  description = "Bastion security group - allows SSH only from admin IP"
  tags = {
    Name = "wzops-bastion-sg"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["105.155.249.136/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}