output "alb_dns_name" {
  description = "ALB DNS name"
  value       = aws_lb.wzops-alb.dns_name
}

output "web_private_ip" {
  description = "Private IP of web instance"
  value       = aws_instance.web.private_ip
}

output "bastion_public_ip" {
  description = "Public IP of bastion host"
  value       = aws_eip.bastion_eip.public_ip
}
