output "ec2_pem" {
  value = aws_key_pair.my_pem.key_name
}