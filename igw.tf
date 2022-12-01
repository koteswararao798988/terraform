# creating internet gateway 
resource "aws_internet_gateway" "demo-gateway" {
  vpc_id = aws_vpc.demovpc.id
}
