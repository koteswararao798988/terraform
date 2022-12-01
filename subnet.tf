# creating first web subnet in vpc
resource "aws_subnet" "public_subnet-1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2a"
  tags = {
    NAME = "web-subnet-1"
  }
}
# creating 2nd web subnet in vpc
resource "aws_subnet" "public_subnet-2" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2b"
  tags = {
    NAME = "web-subnet-2"
  }
}
# creating 1st app subnet in vpc
resource "aws_subnet" "app_subnet-1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "us-east-2a"
  tags = {
    NAME = "app-1"
  }
}
# creating 2nd app subnet in vpc
resource "aws_subnet" "app_subnet-2" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "us-east-2b"
  tags = {
    NAME = "app-2"
  }
}
# creating 1st database subnet in vpc 
resource "aws_subnet" "database_subnet-1" {
  vpc_id            = aws_vpc.demovpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-2a"
  tags = {
    NAME = "db-1"
  }
}
# creating 2nd database subnet in vpc
resource "aws_subnet" "database_subnet-2" {
  vpc_id            = aws_vpc.demovpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "us-east-2b"
  tags = {
    NAME = "db-2"
  }
}
