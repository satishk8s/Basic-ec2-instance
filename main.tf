resource "aws_instance" "goldenami" {
     ami = data.external.latest_ami.result.ImageId
     availability_zone = "${var.availability_zone}"
     instance_type = "${var.instance_type}"
     subnet_id = "${var.subnet_id}"
     associate_public_ip_address = false	
     
data "external" "latest_ami" {
  program = ["sh", "./latest_ami.sh"]
}

        tags = {
         Name = "GAMI-V1"
         Env = "Prod"
         Owner = "Satish"
    }
}
