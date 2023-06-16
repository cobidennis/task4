resource "aws_instance" "task4_node" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  count                  = var.instance_count
  subnet_id              = count.index % 2 == 0 ? var.subnet_id_1a : var.subnet_id_1b
  vpc_security_group_ids = var.vpc_security_group_ids
  tags                   = merge(var.default_tags, {"Name" = "${join("-", [var.default_tags.Name, var.default_tags.Environment, count.index + 1])}"})
}
