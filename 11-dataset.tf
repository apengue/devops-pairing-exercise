data "aws_ami" "amzn" {
  most_recent = true
  filter {
    name = "name"
    values = ["amzn-ami-hvm-*"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name = "root-device-type"
    values = ["ebs"]
  }
  owners = ["137112412989"] # Amazon
}
