resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "Roboshop-PublicSubnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Roboshop-PrivateSubnet"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Roboshop-igw"
  }
}

resource "aws_route_table" "PublicRT" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

   tags = {
    Name = "Roboshop-PublicRT"
  }
}

resource "aws_route_table" "PrivateRT" {
  vpc_id = aws_vpc.main.id

   tags = {
    Name = "Roboshop-PrivateRT"
  }
}

resource "aws_route_table_association" "PublicRTAssociation" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.PublicRT.id
}

resource "aws_route_table_association" "PrivateRTAssociation" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.PrivateRT.id
}

