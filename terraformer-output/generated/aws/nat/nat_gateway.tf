resource "aws_nat_gateway" "tfer--nat-0510334fbc12643df" {
  allocation_id                      = "eipalloc-024e82d07e6e6f66e"
  connectivity_type                  = "public"
  private_ip                         = "172.20.1.137"
  secondary_private_ip_address_count = "0"
  subnet_id                          = "subnet-06f9a934480efe88d"

  tags = {
    Name = "natos-project"
  }

  tags_all = {
    Name = "natos-project"
  }
}
