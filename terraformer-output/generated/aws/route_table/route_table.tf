resource "aws_route_table" "tfer--rtb-011f9f874caf5f9d1" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0510334fbc12643df"
  }

  tags = {
    Name = "project-rtb-private1-eu-north-1a"
  }

  tags_all = {
    Name = "project-rtb-private1-eu-north-1a"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e8b289c8c5a0caed_id}"
}

resource "aws_route_table" "tfer--rtb-02d72446a4f0fee16" {
  tags = {
    Name = "project main route table"
  }

  tags_all = {
    Name = "project main route table"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e8b289c8c5a0caed_id}"
}

resource "aws_route_table" "tfer--rtb-02de8a183443b1c52" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-08ce1f4cd26d111b2"
  }

  tags = {
    Name = "project-rtb-public"
  }

  tags_all = {
    Name = "project-rtb-public"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e8b289c8c5a0caed_id}"
}

resource "aws_route_table" "tfer--rtb-046abd3a593ff9869" {
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "nat-0510334fbc12643df"
  }

  tags = {
    Name = "project-rtb-private2-eu-north-1b"
  }

  tags_all = {
    Name = "project-rtb-private2-eu-north-1b"
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e8b289c8c5a0caed_id}"
}

resource "aws_route_table" "tfer--rtb-05844dce5f02837b8" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-03201031923969c19"
  }

  tags = {
    Name = "default VPC route table "
  }

  tags_all = {
    Name = "default VPC route table "
  }

  vpc_id = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0fac2a760b16f1c39_id}"
}
