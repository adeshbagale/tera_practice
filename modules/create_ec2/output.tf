output "ec2_public_ip" {
  value = aws_instance.ec2_instance.public_ip
}

output "ec2_private_ip" {
  value = aws_instance.ec2_instance.private_ip
}

output "ec2_id" {
  value = aws_instance.ec2_instance.id
}