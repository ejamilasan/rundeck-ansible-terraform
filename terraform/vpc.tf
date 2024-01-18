data "aws_vpc" "default_vpc" {
  id = var.vpc_id
}

data "aws_subnets" "default_vpc_subnets" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

data "aws_subnets" "public_vpc_subnets" {
  filter {
    name   = "map-public-ip-on-launch"
    values = ["true"]
  }
}

# output "first_pub_subnet" {
#   value = data.aws_subnets.public_vpc_subnets.ids[0]
# }