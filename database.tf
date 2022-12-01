# creating mysql security group
resource "aws_security_group" "mysqlsg" {
  vpc_id = aws_vpc.demovpc.id
  ingress {
    from_port = "3306"
    to_port   = "3306"
    protocol  = "tcp"
  }
  egress {
    from_port   = 32768
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    NAME = "db sg"
  }
}
