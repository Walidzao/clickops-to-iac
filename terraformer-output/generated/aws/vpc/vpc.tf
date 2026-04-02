resource "aws_vpc" "tfer--vpc-0e8b289c8c5a0caed" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "172.20.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"

  tags = {
    Name = "project-vpc"
  }

  tags_all = {
    Name = "project-vpc"
  }
}

resource "aws_vpc" "tfer--vpc-0fac2a760b16f1c39" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "172.31.0.0/16"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"

  tags = {
    Name = "Default VPC "
  }

  tags_all = {
    Name = "Default VPC "
  }
}
