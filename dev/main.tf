module "ec2" {
  source = "../modules/ec2"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name
  instance_count = var.instance_count
  subnet_id_1a   = var.subnet_id_1a
  subnet_id_1b   = var.subnet_id_1b
  vpc_security_group_ids = var.vpc_security_group_ids
  default_tags   = var.default_tags

}