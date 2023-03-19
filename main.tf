module "create_pem" {
  source = "./modules/create_pem"
  key_name = var.root_key_name
  key_path = var.root_key_path
}

module "create_sg" {
  source = "./modules/create_sg"
  sg_name = var.root_sg_name
}

module "create_ec2" {
  source = "./modules/create_ec2"
  ami_id = var.root_ami_id
  instance_type = var.root_instance_type
  ec2_key = module.create_pem.ec2_pem
  ec2_sg = module.create_sg.ec2_sg_id
  
}