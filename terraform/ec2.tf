module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"

  name                   = var.name
  instance_type          = var.instance_type
  ami                    = var.ami
  iam_instance_profile   = aws_iam_role.rundeck_instance_role.name
  key_name               = null
  vpc_security_group_ids = [module.rundeck_security_group.security_group_id]
  subnet_id              = data.aws_subnets.public_vpc_subnets.ids[0]

  tags = var.default_tags
}