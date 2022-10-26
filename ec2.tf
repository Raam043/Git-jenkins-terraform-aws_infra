resource "aws_instance" "web-1" {
    count = 1
	ami = "ami-02d1e544b84bf7502"
    availability_zone = "us-east-2a"
    instance_type = "t2.micro"
    key_name = ""
    subnet_id = aws_subnet.subnet1-public.id
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
    Name = "tf-Linux-Ramesh"
  }
}
