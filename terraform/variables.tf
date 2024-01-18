variable "name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami" {
  type = string
}

variable "sg_name" {
  type = string
}

variable "instance_profile_name" {
  type = string
}

variable "default_tags" {
  type = map(string)
  default = {
    managed_by_terraform = "true"
  }
}