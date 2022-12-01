# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "instance" {
  ami           = "ami-0beaa649c482330f7"
  instance_type = "t2.micro"
  #count                       = 1
  key_name                    = "joke"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.public_subnet-1.id
  associate_public_ip_address = true
  tags = {
    Name = "ec2 instance"
  }
}
# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "instance-2" {
  ami           = "ami-0beaa649c482330f7"
  instance_type = "t2.micro"
  #count                       = 1
  key_name                    = "joke"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.public_subnet-1.id
  associate_public_ip_address = true
  tags = {
    Name = "ec2 instance 2"
  }
}
# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "demoinstance" {
  ami = "ami-0beaa649c482330f7"
  instance_type = "t2.micro"
  count = 1
  key_name = "joke"
  vpc_security_group_ids = ["${aws_security_group.demosg.id}"]
  subnet_id = "${aws_subnet.public_subnet-1.id}"
  associate_public_ip_address = true
  user_data = "${file("data.sh")}"
tags = {
Name = "ec2 instance"
}
}

