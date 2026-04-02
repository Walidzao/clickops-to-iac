resource "aws_security_group" "tfer--default_sg-00839c37bd10d4b5d" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-0fac2a760b16f1c39"
}

resource "aws_security_group" "tfer--default_sg-0f42d16b7d9ee603f" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name   = "default"
  vpc_id = "vpc-0e8b289c8c5a0caed"
}

resource "aws_security_group" "tfer--kops-sg_sg-04465dd16362a73c0" {
  description = "launch-wizard-2 created 2025-12-30T12:05:52.390Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["46.128.10.130/32"]
    description = "my computer"
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "kops-sg"
  vpc_id = "vpc-0fac2a760b16f1c39"
}

resource "aws_security_group" "tfer--launch-wizard-1_sg-0d6a140e0360ad5ee" {
  description = "launch-wizard-1 created 2024-09-12T14:01:40.527Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "443"
    protocol    = "tcp"
    self        = "false"
    to_port     = "443"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "80"
    protocol    = "tcp"
    self        = "false"
    to_port     = "80"
  }

  ingress {
    cidr_blocks = ["62.214.149.106/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "launch-wizard-1"
  vpc_id = "vpc-0fac2a760b16f1c39"
}

resource "aws_security_group" "tfer--natos-SG_sg-0f905033e03606f98" {
  description = "To allow ssh to the bastion host"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["105.155.249.136/32"]
    from_port   = "22"
    protocol    = "tcp"
    self        = "false"
    to_port     = "22"
  }

  name   = "natos-SG"
  vpc_id = "vpc-0e8b289c8c5a0caed"
}

resource "aws_security_group" "tfer--web-elb-sg_sg-0179ab0e73228e386" {
  description = "ELB"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = "80"
    ipv6_cidr_blocks = ["::/0"]
    protocol         = "tcp"
    self             = "false"
    to_port          = "80"
  }

  name   = "web-elb-sg"
  vpc_id = "vpc-0e8b289c8c5a0caed"
}

resource "aws_security_group" "tfer--web-sg01_sg-0928e4d9d73be584a" {
  description = "web-sg01 created 2026-03-31T15:35:38.237Z"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port       = "22"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--natos-SG_sg-0f905033e03606f98_id}"]
    self            = "false"
    to_port         = "22"
  }

  ingress {
    from_port       = "80"
    protocol        = "tcp"
    security_groups = ["${data.terraform_remote_state.sg.outputs.aws_security_group_tfer--web-elb-sg_sg-0179ab0e73228e386_id}"]
    self            = "false"
    to_port         = "80"
  }

  name   = "web-sg01"
  vpc_id = "vpc-0e8b289c8c5a0caed"
}
