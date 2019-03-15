resource "aws_instance" "apnginx01" {
  ami = "${data.aws_ami.amzn.id}"
  instance_type = "t2.medium"
  subnet_id = "subnet-828a32e5"
  security_groups = ["sg-0d850575","sg-00f31a44edd4eb12a"]
  
lifecycle {                                                                      
    create_before_destroy = true                                                   
  } 

  count         = 1
  tags {
    Name = "alengixn-${count.index + 1}",
    Role = "alengixn"
  }

  root_block_device {
    volume_size = 50
  }

  key_name = "${aws_key_pair.mykeypair.key_name}"
  user_data       = "${file("scripts/userdata.sh")}"
}
resource "aws_instance" "apnginx02" {
  ami = "${data.aws_ami.amzn.id}"
  instance_type = "t2.medium"
  subnet_id = "subnet-ef1594a6"
  security_groups = ["sg-0d850575","sg-00f31a44edd4eb12a"]
  
lifecycle {                                                                      
    create_before_destroy = true                                                   
  } 

  count         = 1
  tags {
    Name = "alengixn-${count.index + 1}",
    Role = "alengixn"
  }

  root_block_device {
    volume_size = 50
  }

  key_name = "${aws_key_pair.mykeypair.key_name}"
  user_data       = "${file("scripts/userdata.sh")}"
}
