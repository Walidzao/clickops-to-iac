resource "aws_default_network_acl" "tfer--acl-06788049ad59eb163" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-02802c772477af6b6_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-04d8de9d047115037_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-08caba5bbaf92dafd_id}"]
}

resource "aws_default_network_acl" "tfer--acl-0cbf11befe131dcbc" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-00f6e734fa9e884bb_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-052cfc95d8800114b_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-06f9a934480efe88d_id}", "${data.terraform_remote_state.subnet.outputs.aws_subnet_tfer--subnet-0c2e68a0711607acb_id}"]
}
