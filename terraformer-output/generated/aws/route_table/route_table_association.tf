resource "aws_route_table_association" "tfer--subnet-00f6e734fa9e884bb" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-046abd3a593ff9869_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-00f6e734fa9e884bb_id}"
}

resource "aws_route_table_association" "tfer--subnet-052cfc95d8800114b" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-011f9f874caf5f9d1_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-052cfc95d8800114b_id}"
}

resource "aws_route_table_association" "tfer--subnet-06f9a934480efe88d" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-02de8a183443b1c52_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-06f9a934480efe88d_id}"
}

resource "aws_route_table_association" "tfer--subnet-0c2e68a0711607acb" {
  route_table_id = "${data.terraform_remote_state.route_table.outputs.aws_route_table_tfer--rtb-02de8a183443b1c52_id}"
  subnet_id      = "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0c2e68a0711607acb_id}"
}
