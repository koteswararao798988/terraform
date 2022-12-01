# creating route table in vpc
resource "aws_route_table" "route" {
  vpc_id = aws_vpc.demovpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo-gateway.id
  }
  tags = {
    NAME = "route to internet"
  }
}
# associating route table
resource "aws_route_table_association" "rt-1" {
  subnet_id      = aws_subnet.public_subnet-1.id
  route_table_id = aws_route_table.route.id
}
# associating route table
resource "aws_route_table_association" "rt-2" {
  subnet_id      = aws_subnet.public_subnet-2.id
  route_table_id = aws_route_table.route.id
}

