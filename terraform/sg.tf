module "rundeck_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name         = var.sg_name
  vpc_id       = var.vpc_id
  egress_rules = ["all-all"]
  tags         = var.default_tags
}