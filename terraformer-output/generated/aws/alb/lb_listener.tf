resource "aws_lb_listener" "tfer--arn-003A-aws-003A-elasticloadbalancing-003A-eu-north-1-003A-820242945499-003A-listener-002F-app-002F-Web-ALB-002F-6e42989e2e50251a-002F-33d64a48c223c98b" {
  default_action {
    forward {
      stickiness {
        duration = "3600"
        enabled  = "false"
      }

      target_group {
        arn    = "arn:aws:elasticloadbalancing:eu-north-1:820242945499:targetgroup/web-instances/507cc6ccaf32cfc5"
        weight = "1"
      }
    }

    order            = "1"
    target_group_arn = "arn:aws:elasticloadbalancing:eu-north-1:820242945499:targetgroup/web-instances/507cc6ccaf32cfc5"
    type             = "forward"
  }

  load_balancer_arn                    = "${data.terraform_remote_state.alb.outputs.aws_lb_tfer--Web-ALB_id}"
  port                                 = "80"
  protocol                             = "HTTP"
  routing_http_response_server_enabled = "true"
}
