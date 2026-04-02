resource "aws_main_route_table_association" "tfer--vpc-0e8b289c8c5a0caed" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-02d72446a4f0fee16_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0e8b289c8c5a0caed_id}"
}

resource "aws_main_route_table_association" "tfer--vpc-0fac2a760b16f1c39" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-05844dce5f02837b8_id}"
  vpc_id         = "${data.terraform_remote_state.vpc.outputs.aws_vpc_tfer--vpc-0fac2a760b16f1c39_id}"
}
