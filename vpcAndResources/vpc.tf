resource "aws_vpc" "wzops" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true" #instances get a dns name 
  tags = {
    Name = "wzops-vpc"
  }
}

resource "aws_subnet" "wzops-pub-1" {
  vpc_id                  = aws_vpc.wzops.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE1
  tags = {
    Name = "wzops-pub-1"
  }
}

resource "aws_subnet" "wzops-pub-2" {
  vpc_id                  = aws_vpc.wzops.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE2
  tags = {
    Name = "wzops-pub-2"
  }
}


resource "aws_subnet" "wzops-pub-3" {
  vpc_id                  = aws_vpc.wzops.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE3
  tags = {
    Name = "wzops-pub-3"
  }
}


resource "aws_subnet" "wzops-priv-1" {
  vpc_id                  = aws_vpc.wzops.id
  cidr_block              = "10.0.4.0/24"
  availability_zone       = var.ZONE1
  tags = {
    Name = "wzops-priv-1"
  }
}


resource "aws_subnet" "wzops-priv-2" {
  vpc_id                  = aws_vpc.wzops.id
  cidr_block              = "10.0.5.0/24"
  availability_zone       = var.ZONE2
  tags = {
    Name = "wzops-priv-2"
  }
}


resource "aws_subnet" "wzops-priv-3" {
  vpc_id                  = aws_vpc.wzops.id
  cidr_block              = "10.0.6.0/24"
  availability_zone       = var.ZONE3
  tags = {
    Name = "wzops-priv-3"
  }
}

resource "aws_internet_gateway" "wzops-IGW" {
  vpc_id = aws_vpc.wzops.id
  tags = {
    Name = "wzops-IGW"
  }
}

resource "aws_route_table" "wzops-pub-RT" {
  vpc_id = aws_vpc.wzops.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.wzops-IGW.id
  }

  tags = {
    Name = "wzops-pub-RT"
  }
}


resource "aws_route_table_association" "wzops-pub-1-a" {
  subnet_id      = aws_subnet.wzops-pub-1.id
  route_table_id = aws_route_table.wzops-pub-RT.id
}

resource "aws_route_table_association" "wzops-pub-2-a" {
  subnet_id      = aws_subnet.wzops-pub-2.id
  route_table_id = aws_route_table.wzops-pub-RT.id
}
resource "aws_route_table_association" "wzops-pub-3-a" {
  subnet_id      = aws_subnet.wzops-pub-3.id
  route_table_id = aws_route_table.wzops-pub-RT.id
}


resource "aws_eip" "nat_eip" {

}

resource "aws_nat_gateway" "wzops" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.wzops-pub-1.id
  depends_on    = [aws_internet_gateway.wzops-IGW]
  tags = {
    Name = "wzops-nat"
  }
}

resource "aws_route_table" "wzops-priv-RT" {
  vpc_id = aws_vpc.wzops.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.wzops.id
  }

  tags = {
    Name = "wzops-priv-RT"
  }
}

resource "aws_route_table_association" "wzops-priv-1-a" {
  subnet_id      = aws_subnet.wzops-priv-1.id
  route_table_id = aws_route_table.wzops-priv-RT.id
}

resource "aws_route_table_association" "wzops-priv-2-a" {
  subnet_id      = aws_subnet.wzops-priv-2.id
  route_table_id = aws_route_table.wzops-priv-RT.id
}

resource "aws_route_table_association" "wzops-priv-3-a" {
  subnet_id      = aws_subnet.wzops-priv-3.id
  route_table_id = aws_route_table.wzops-priv-RT.id
}
