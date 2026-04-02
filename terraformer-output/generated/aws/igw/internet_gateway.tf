resource "aws_internet_gateway" "tfer--igw-03201031923969c19" {
  tags = {
    Name = "default IGW "
  }

  tags_all = {
    Name = "default IGW "
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0fac2a760b16f1c39_id}"
}

resource "aws_internet_gateway" "tfer--igw-08ce1f4cd26d111b2" {
  tags = {
    Name = "project-igw"
  }

  tags_all = {
    Name = "project-igw"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e8b289c8c5a0caed_id}"
}
