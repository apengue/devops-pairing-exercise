resource "aws_security_group" "ssh_from_all" {
  name = "ssh_from_google"
  description = "Allow SSH from google"

  vpc_id = "vpc-5b49cf3c"

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "ssh_from_google",
    Role = "gluster"
  }
}
