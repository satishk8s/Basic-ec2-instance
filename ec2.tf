 resource "aws_instance" "web" {
     ami = "ami-0747bdcabd34c712a"
     availability_zone = "us-east-1a"
     instance_type = "t2.micro"
     key_name = "Satish-key"
     subnet_id = "${aws_subnet.subnet1-public.id}"
     vpc_security_group_ids = ["${aws_security_group.Open_all_gates.id}"]
     associate_public_ip_address = true	

        tags = {
         Name = "Server-1"
         Env = "Prod"
         Owner = "Satish"
    }
}
