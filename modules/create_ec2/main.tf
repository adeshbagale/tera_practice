resource "aws_instance" "ec2_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.ec2_key
  vpc_security_group_ids = [var.ec2_sg]
  tags = {
    "Name" = "Terraform"
  }

}