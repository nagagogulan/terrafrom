module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source    = "./modules/ec2"
  subnet_id = module.vpc.subnet_id
  key_name  = "my-key"
}

output "instance_ip" {
  value = module.ec2.instance_ip
}
