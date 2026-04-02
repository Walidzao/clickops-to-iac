output "aws_lb_listener_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-eu-north-1-003A-820242945499-003A-listener-002F-app-002F-Web-ALB-002F-6e42989e2e50251a-002F-33d64a48c223c98b_id" {
  value = "${aws_lb_listener.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-eu-north-1-003A-820242945499-003A-listener-002F-app-002F-Web-ALB-002F-6e42989e2e50251a-002F-33d64a48c223c98b.id}"
}

output "aws_lb_target_group_attachment_tfer--arn-003A-aws-003A-elasticloadbalancing-003A-eu-north-1-003A-820242945499-003A-targetgroup-002F-web-instances-002F-507cc6ccaf32cfc5-i-0df1e7a3354a66d64_id" {
  value = "${aws_lb_target_group_attachment.tfer--arn-003A-aws-003A-elasticloadbalancing-003A-eu-north-1-003A-820242945499-003A-targetgroup-002F-web-instances-002F-507cc6ccaf32cfc5-i-0df1e7a3354a66d64.id}"
}

output "aws_lb_target_group_tfer--web-instances_id" {
  value = "${aws_lb_target_group.tfer--web-instances.id}"
}

output "aws_lb_tfer--Web-ALB_id" {
  value = "${aws_lb.tfer--Web-ALB.id}"
}
